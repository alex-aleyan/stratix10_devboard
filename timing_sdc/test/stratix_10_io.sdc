## Generated SDC file "stratix_10_io.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Intel Corporation"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.0.1 Build 261 06/28/2018 SJ Pro Edition"

## DATE    "Fri Jul 12 13:24:28 2019"

##
## DEVICE  "1SX280LU2F50E2VGS2"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name CLK_50M_FPGA     -period 10.000 [get_ports {CLK_50M_FPGA}]
create_clock -name CLK_50M_FPGA_VIR -period 10.000

set_input_delay -add_delay -max 4.69 -clock {CLK_50M_FPGA_VIR} [get_ports {USER_DIPSW_FPGA*}]
set_input_delay -add_delay -min 0.69 -clock {CLK_50M_FPGA_VIR} [get_ports {USER_DIPSW_FPGA*}]

set_output_delay -add_delay -max 0.84  -clock {CLK_50M_FPGA_VIR} [get_ports {USER_LED_FPGA*}]
set_output_delay -add_delay -min -1.66 -clock {CLK_50M_FPGA_VIR} [get_ports {USER_LED_FPGA*}]
