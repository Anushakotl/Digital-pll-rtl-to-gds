`timescale 1ns/1ps

module pll_digital_top (

    input  wire                    ref_clk,
    input  wire                    tdc_clk,
    input  wire                    reset_n,
    input  wire                    start,

    // External oscillator/VCO clock
    input  wire                    vco_clk,

    input  wire [7:0]              divide_value,


    // ---------------------------------------------------------
    // Main outputs
    // ---------------------------------------------------------

    output wire [9:0]              tuning_word,
    output wire                    feedback_clk,
    output wire                    locked,


    // ---------------------------------------------------------
    // Debug / verification outputs
    // ---------------------------------------------------------

    output wire                    UP,
    output wire                    DOWN,

    output wire [7:0]       phase_error,
    output wire                    error_valid,

    output wire                    sat_high,
    output wire                    sat_low,

    output wire [2:0]              controller_state,

    output wire [7:0]       kp_debug,
    output wire [7:0]       ki_debug,

    output wire                    loop_enable
);


    // =========================================================
    // INTERNAL CONTROL SIGNALS
    // =========================================================

    wire [7:0] kp_internal;
    wire [7:0] ki_internal;


    assign kp_debug = kp_internal;
    assign ki_debug = ki_internal;


    // =========================================================
    // PHASE / FREQUENCY DETECTOR
    // =========================================================

    phase_frequency_detector u_pfd (

        .ref_clk (ref_clk),
        .fb_clk  (feedback_clk),
        .reset_n (reset_n),

        .UP       (UP),
        .DOWN     (DOWN)

    );


    // =========================================================
    // DIGITAL PHASE-ERROR TDC
    // =========================================================

    phase_error_tdc u_tdc (

        .tdc_clk     (tdc_clk),
        .reset_n     (reset_n),

        .UP           (UP),
        .DOWN         (DOWN),

        .phase_error  (phase_error),
        .error_valid  (error_valid)

    );


    // =========================================================
    // PI DIGITAL LOOP FILTER
    // =========================================================

    pi_loop_filter u_pi_filter (

        .tdc_clk      (tdc_clk),
        .reset_n      (reset_n),

        .enable       (loop_enable),

        .phase_error  (phase_error),
        .error_valid  (error_valid),

        .kp            (kp_internal),
        .ki            (ki_internal),

        .tuning_word   (tuning_word),

        .sat_high      (sat_high),
        .sat_low       (sat_low)

    );


    // =========================================================
    // PROGRAMMABLE FEEDBACK DIVIDER
    // =========================================================
    //
    // The oscillator can run continuously.
    //
    // The feedback path remains active after reset so that
    // valid phase information exists when the controller starts.
    // =========================================================

    feedback_divider u_feedback_divider (

        .vco_clk       (vco_clk),
        .reset_n       (reset_n),

        .enable        (1'b1),

        .divide_value  (divide_value),

        .feedback_clk  (feedback_clk)

    );


    // =========================================================
    // LOCK DETECTOR
    // =========================================================

    lock_detector u_lock_detector (

        .tdc_clk      (tdc_clk),
        .reset_n      (reset_n),

        .enable       (loop_enable),

        .phase_error  (phase_error),
        .error_valid  (error_valid),

        .locked       (locked)

    );


    // =========================================================
    // PLL CONTROLLER / GAIN-SCHEDULING FSM
    // =========================================================

    pll_controller u_controller (

        .tdc_clk      (tdc_clk),
        .reset_n      (reset_n),

        .start        (start),

        .phase_error  (phase_error),
        .error_valid  (error_valid),

        .locked       (locked),

        .loop_enable  (loop_enable),

        .kp            (kp_internal),
        .ki            (ki_internal),

        .state         (controller_state)

    );


endmodule
