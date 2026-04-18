###############################################################################
# Created by write_sdc
###############################################################################
current_design spi_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clk -period 10.0000 [get_ports {clk}]
set_propagated_clock [get_clocks {core_clk}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {cpha}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {cpol}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[0]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[10]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[11]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[1]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[2]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[3]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[4]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[5]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[6]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[7]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[8]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_din[9]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {newd}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {rst}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[0]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[10]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[11]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[1]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[2]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[3]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[4]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[5]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[6]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[7]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[8]}]
set_input_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_din[9]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {done}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[10]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[11]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[2]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[3]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[4]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[5]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[6]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[7]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[8]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {master_dout[9]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[10]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[11]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[2]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[3]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[4]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[5]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[6]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[7]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[8]}]
set_output_delay 2.0000 -clock [get_clocks {core_clk}] -add_delay [get_ports {slave_dout[9]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
