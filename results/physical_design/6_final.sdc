###############################################################################
# Created by write_sdc
###############################################################################
current_design pll_digital_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name ref_clk -period 100.0000 [get_ports {ref_clk}]
set_propagated_clock [get_clocks {ref_clk}]
create_clock -name tdc_clk -period 5.0000 [get_ports {tdc_clk}]
set_propagated_clock [get_clocks {tdc_clk}]
create_clock -name ctrl_clk -period 20.0000 [get_ports {ctrl_clk}]
set_propagated_clock [get_clocks {ctrl_clk}]
create_clock -name vco_clk -period 20.0000 [get_ports {vco_clk}]
set_propagated_clock [get_clocks {vco_clk}]
set_clock_groups -name group1 -asynchronous \
 -group [get_clocks {ctrl_clk}]\
 -group [get_clocks {ref_clk}]\
 -group [get_clocks {tdc_clk}]\
 -group [get_clocks {vco_clk}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
