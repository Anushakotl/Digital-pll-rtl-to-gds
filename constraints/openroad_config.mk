export DESIGN_NAME = pll_digital_top
export PLATFORM    = sky130hd

export VERILOG_FILES = \
    $(DESIGN_HOME)/src/pll_digital_top/pfd.v \
    $(DESIGN_HOME)/src/pll_digital_top/phase_error_tdc.v \
    $(DESIGN_HOME)/src/pll_digital_top/phase_error_cdc.v \
    $(DESIGN_HOME)/src/pll_digital_top/frequency_detector.v \
    $(DESIGN_HOME)/src/pll_digital_top/frequency_acquisition.v \
    $(DESIGN_HOME)/src/pll_digital_top/pi_loop_filter.v \
    $(DESIGN_HOME)/src/pll_digital_top/feedback_divider.v \
    $(DESIGN_HOME)/src/pll_digital_top/lock_detector.v \
    $(DESIGN_HOME)/src/pll_digital_top/pll_controller.v \
    $(DESIGN_HOME)/src/pll_digital_top/pll_digital_top.v

export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/pll_digital_top/constraint.sdc

# Start conservatively.
export CORE_UTILIZATION = 35

export TNS_END_PERCENT = 100

# Allow synthesis to optimize arithmetic structures.
export SWAP_ARITH_OPERATORS = 1
export OPENROAD_HIERARCHICAL = 1
