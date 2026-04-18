module spi_top (

    input  wire        clk,
    input  wire        rst,
    input  wire        newd,

    input  wire        cpol,
    input  wire        cpha,

    input  wire [11:0] master_din,
    input  wire [11:0] slave_din,

    output wire [11:0] master_dout,
    output wire [11:0] slave_dout,

    output wire        done
);

    // =========================
    // INTERCONNECT SIGNALS
    // =========================
    wire sclk;
    wire cs;
    wire mosi;
    wire miso;

    wire master_done;
    wire slave_done;
    wire master_busy;

    // =========================
    // MASTER INSTANCE
    // =========================
    spi_master MASTER (
        .clk(clk),
        .rst(rst),
        .newd(newd),

        .cpol(cpol),
        .cpha(cpha),

        .din(master_din),
        .miso(miso),

        .sclk(sclk),
        .cs(cs),
        .mosi(mosi),

        .dout(master_dout),
        .done(master_done),
        .busy(master_busy)
    );

    // =========================
    // SLAVE INSTANCE
    // =========================
    spi_slave SLAVE (
        .sclk(sclk),
        .cs(cs),
        .mosi(mosi),

        .cpol(cpol),
        .cpha(cpha),

        .din(slave_din),
        .miso(miso),

        .dout(slave_dout),
        .done(slave_done)
    );

    // =========================
    // FINAL DONE SIGNAL
    // =========================
    assign done = master_done;

endmodule
