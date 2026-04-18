# Design Name
export DESIGN_NAME = spi_top
export PLATFORM = sky130hd


# RTL Files
export VERILOG_FILES = ./designs/sky130hd/spi/src/*.v

# Top Module
export TOP_MODULE = spi_top

# Clock
export CLOCK_PORT = clk
export CLOCK_PERIOD = 10.0   # 100 MHz

# Platform

# SDC File
export SDC_FILE = ./designs/sky130hd/spi/const.sdc

# Die and Core Area (simple starting values)
export DIE_AREA  = 0 0 125 125
export CORE_AREA = 10 10 115 115

# Utilization
#export CORE_UTILIZATION = 40

# Placement density
export PLACE_DENSITY = 0.60

# Routing
export ROUTING_LAYER_ADJUSTMENT = 0.2

# Enable clock tree synthesis
export CTS_BUF_DISTANCE = 100

# Dont use macros (simple design)
export MACRO_PLACE_HALO = 5 5
export MACRO_PLACE_CHANNEL = 5 5

