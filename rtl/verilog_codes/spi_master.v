module spi_master (
    input  wire        clk,
    input  wire        rst,
    input  wire        newd,

    input  wire        cpol,
    input  wire        cpha,

    input  wire [11:0] din,
    input  wire        miso,

    output reg         sclk,
    output reg         cs,
    output reg         mosi,
    output reg [11:0]  dout,
    output reg         done,
    output reg         busy
);

    // =========================
    // STATE DEFINITIONS
    // =========================
    parameter IDLE   = 2'b00;
    parameter ENABLE = 2'b01;
    parameter SEND   = 2'b10;
    parameter COMP   = 2'b11;

    reg [1:0] state, next_state;

    // =========================
    // INTERNAL REGISTERS
    // =========================
    reg [11:0] tx_shift;
    reg [11:0] rx_shift;

    reg [3:0]  bit_cnt;
    reg [4:0]  clk_div;

    reg sclk_en;
    reg sclk_d;

    wire tick;
    wire sclk_rise, sclk_fall;

    // =========================
    // CLOCK DIVIDER
    // =========================
    always @(posedge clk or posedge rst) begin
        if (rst)
            clk_div <= 0;
        else if (clk_div == 9)
            clk_div <= 0;
        else
            clk_div <= clk_div + 1;
    end

    assign tick = (clk_div == 9);

    // =========================
    // SCLK GENERATION
    // =========================
    always @(posedge clk or posedge rst) begin
        if (rst)
            sclk <= 0;
        else if (sclk_en && tick)
            sclk <= ~sclk;
        else if (!sclk_en)
            sclk <= cpol;
    end

    // =========================
    // EDGE DETECTION
    // =========================
    always @(posedge clk or posedge rst) begin
        if (rst)
            sclk_d <= 0;
        else
            sclk_d <= sclk;
    end

    assign sclk_rise = (sclk == 1 && sclk_d == 0);
    assign sclk_fall = (sclk == 0 && sclk_d == 1);

    // =========================
    // STATE REGISTER
    // =========================
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    // =========================
    // NEXT STATE LOGIC
    // =========================
    always @(*) begin
        case (state)
            IDLE:   next_state = (newd) ? ENABLE : IDLE;
            ENABLE: next_state = SEND;
            SEND:   next_state = (bit_cnt == 11 && tick) ? COMP : SEND;
            COMP:   next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // =========================
    // DATA PATH + CONTROL
    // =========================
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cs      <= 1;
            mosi    <= 0;
            dout    <= 0;
            done    <= 0;
            busy    <= 0;

            tx_shift <= 0;
            rx_shift <= 0;
            bit_cnt  <= 0;

            sclk_en <= 0;
        end
        else begin
            case (state)

                // -----------------
                // IDLE
                // -----------------
                IDLE: begin
                    cs   <= 1;
                    done <= 0;
                    busy <= 0;
                    bit_cnt <= 0;
                    sclk_en <= 0;

                    if (newd) begin
                        tx_shift <= din;
                        busy <= 1;
                    end
                end

                // -----------------
                // ENABLE
                // -----------------
                ENABLE: begin
                    cs <= 0;
                    sclk_en <= 1;
                end

                // -----------------
                // SEND
                // -----------------
                SEND: begin
                    if (tick) begin

                        // CPHA = 0
                        if (cpha == 0) begin
                            if ((cpol == 0 && sclk_fall) || (cpol == 1 && sclk_rise)) begin
                                mosi <= tx_shift[11];
                                tx_shift <= {tx_shift[10:0], 1'b0};
                            end

                            if ((cpol == 0 && sclk_rise) || (cpol == 1 && sclk_fall)) begin
                                rx_shift <= {rx_shift[10:0], miso};
                                bit_cnt <= bit_cnt + 1;
                            end
                        end

                        // CPHA = 1
                        else begin
                            if ((cpol == 0 && sclk_rise) || (cpol == 1 && sclk_fall)) begin
                                mosi <= tx_shift[11];
                                tx_shift <= {tx_shift[10:0], 1'b0};
                            end

                            if ((cpol == 0 && sclk_fall) || (cpol == 1 && sclk_rise)) begin
                                rx_shift <= {rx_shift[10:0], miso};
                                bit_cnt <= bit_cnt + 1;
                            end
                        end

                    end
                end

                // -----------------
                // COMPLETE
                // -----------------
                COMP: begin
                    cs   <= 1;
                    sclk_en <= 0;
                    done <= 1;
                    busy <= 0;
                    dout <= rx_shift;
                    mosi <= 0;
                end

            endcase
        end
    end

endmodule
