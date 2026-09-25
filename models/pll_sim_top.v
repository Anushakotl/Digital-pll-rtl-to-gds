`timescale 1ns/1ps

module pll_sim_top (

    // =========================================================
    // CLOCKS / RESET / CONTROL
    // =========================================================

    input  wire                    ref_clk,

    // Fast TDC sampling clock
    // 200 MHz -> 5 ns period
    input  wire                    tdc_clk,

    // Slower digital control clock
    // 50 MHz -> 20 ns period
    input  wire                    ctrl_clk,

    input  wire                    reset_n,
    input  wire                    start,

    input  wire [7:0]              divide_value,


    // =========================================================
    // MAIN OUTPUTS
    // =========================================================

    output wire                    vco_clk,
    output wire                    feedback_clk,

    output wire [9:0]              tuning_word,

    output wire                    locked,


    // =========================================================
    // DEBUG OUTPUTS
    // =========================================================

    output wire                    UP,
    output wire                    DOWN,

    output wire signed [7:0]       phase_error,
    output wire                    error_valid,

    output wire                    sat_high,
    output wire                    sat_low,

    output wire [2:0]              controller_state,

    output wire signed [7:0]       kp_debug,
    output wire signed [7:0]       ki_debug,

    output wire                    loop_enable
);


    // =========================================================
    // BEHAVIORAL VCO
    // =========================================================
    //
    // This block is SIMULATION ONLY.
    //
    // tuning_word controls the modeled VCO frequency.
    //
    // The resulting vco_clk is fed back through the divider
    // into the phase/frequency detector.
    // =========================================================

    behavioral_vco u_vco (

        .reset_n      (reset_n),

        .tuning_word  (tuning_word),

        .vco_clk      (vco_clk)

    );


    // =========================================================
    // DIGITAL PLL SUBSYSTEM
    // =========================================================
    //
    // Clock domains:
    //
    // ref_clk  -> PFD reference
    //
    // tdc_clk  -> 200 MHz phase-error measurement domain
    //
    // ctrl_clk -> 50 MHz controller / lock detector /
    //             PI loop-filter domain
    //
    // vco_clk  -> feedback-divider domain
    // =========================================================

    pll_digital_top u_digital (

        .ref_clk           (ref_clk),

        .tdc_clk           (tdc_clk),

        .ctrl_clk          (ctrl_clk),

        .reset_n           (reset_n),

        .start             (start),

        .vco_clk           (vco_clk),

        .divide_value      (divide_value),

        .tuning_word       (tuning_word),

        .feedback_clk      (feedback_clk),

        .locked            (locked),

        .UP                (UP),

        .DOWN              (DOWN),

        .phase_error       (phase_error),

        .error_valid       (error_valid),

        .sat_high          (sat_high),

        .sat_low           (sat_low),

        .controller_state  (controller_state),

        .kp_debug          (kp_debug),

        .ki_debug          (ki_debug),

        .loop_enable       (loop_enable)

    );


endmodule
