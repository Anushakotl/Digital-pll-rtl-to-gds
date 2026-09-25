# =============================================================
# PLL Digital Subsystem Timing Constraints
# =============================================================

# -------------------------------------------------------------
# Primary clocks
# -------------------------------------------------------------

# Reference clock:
# 10 MHz -> 100 ns period
create_clock -name ref_clk \
    -period 100.000 \
    [get_ports ref_clk]

# TDC clock:
# 200 MHz -> 5 ns period
create_clock -name tdc_clk \
    -period 5.000 \
    [get_ports tdc_clk]

# Control clock:
# 50 MHz -> 20 ns period
create_clock -name ctrl_clk \
    -period 20.000 \
    [get_ports ctrl_clk]

# VCO interface clock:
# Constrain the digital interface at 50 MHz.
# 50 MHz -> 20 ns period
create_clock -name vco_clk \
    -period 20.000 \
    [get_ports vco_clk]


# =============================================================
# CLOCK DOMAIN RELATIONSHIPS
# =============================================================

# These clocks are independently supplied primary clocks.
#
# The RTL contains explicit CDC logic for the crossings between
# the TDC domain and the control domain.
#
# Therefore STA should not interpret these domains as having
# a fixed phase relationship.

set_clock_groups -asynchronous \
    -group [get_clocks ref_clk] \
    -group [get_clocks tdc_clk] \
    -group [get_clocks ctrl_clk] \
    -group [get_clocks vco_clk]


# =============================================================
# CDC PATH PROTECTION
# =============================================================

# The phase-error and frequency-error measurements cross from
# tdc_clk to ctrl_clk through explicit CDC mailbox logic.
#
# The asynchronous clock grouping above prevents STA from
# treating those crossings as synchronous timing paths.


# =============================================================
# GENERAL DESIGN SETTINGS
# =============================================================

# Do not apply an artificial input/output delay to the primary
# clocks. They are explicitly constrained above.
