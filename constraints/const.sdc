# =========================
# CLOCK DEFINITION
# =========================
current_design spi_top

create_clock -name core_clk -period 10 [get_ports clk]
set_input_delay 2 -clock core_clk [all_inputs]
set_output_delay 2 -clock core_clk [all_outputs]
