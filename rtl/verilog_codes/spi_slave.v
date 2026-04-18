module spi_slave (
    input  wire        sclk,
    input  wire        cs,
    input  wire        mosi,
    input  wire        cpol,
    input  wire        cpha,
    input  wire [11:0] din,

    output reg         miso,
    output reg [11:0]  dout,
    output reg         done
);

    parameter IDLE     = 1'b0;
    parameter TRANSFER = 1'b1;

    reg state;

    reg [11:0] tx_shift;
    reg [11:0] rx_shift;
    reg [3:0]  bit_cnt;

    reg sclk_d;

    wire sclk_rise, sclk_fall;

    // EDGE DETECTION
    always @(posedge sclk) begin
        sclk_d <= sclk;
    end

    assign sclk_rise = (sclk == 1 && sclk_d == 0);
    assign sclk_fall = (sclk == 0 && sclk_d == 1);

    // MAIN LOGIC (NO ASYNC RESET)
    always @(posedge sclk) begin

        // CS HIGH → reset behavior (synchronous)
        if (cs) begin
            state    <= IDLE;
            bit_cnt  <= 0;
            done     <= 0;
            miso     <= 0;
            tx_shift <= din;
        end
        else begin
            case (state)

                IDLE: begin
                    done <= 0;
                    tx_shift <= din;
                    state <= TRANSFER;
                end

                TRANSFER: begin

                    // CPHA = 0
                    if (cpha == 0) begin

                        if ((cpol == 0 && sclk_fall) || (cpol == 1 && sclk_rise)) begin
                            miso <= tx_shift[11];
                            tx_shift <= {tx_shift[10:0], 1'b0};
                        end

                        if ((cpol == 0 && sclk_rise) || (cpol == 1 && sclk_fall)) begin
                            rx_shift <= {rx_shift[10:0], mosi};
                            bit_cnt <= bit_cnt + 1;
                        end
                    end

                    // CPHA = 1
                    else begin

                        if ((cpol == 0 && sclk_rise) || (cpol == 1 && sclk_fall)) begin
                            miso <= tx_shift[11];
                            tx_shift <= {tx_shift[10:0], 1'b0};
                        end

                        if ((cpol == 0 && sclk_fall) || (cpol == 1 && sclk_rise)) begin
                            rx_shift <= {rx_shift[10:0], mosi};
                            bit_cnt <= bit_cnt + 1;
                        end
                    end

                    if (bit_cnt == 11) begin
                        dout <= rx_shift;
                        done <= 1;
                        state <= IDLE;
                        bit_cnt <= 0;
                    end

                end

            endcase
        end
    end

endmodule
