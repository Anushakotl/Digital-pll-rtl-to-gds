`timescale 1ns/1ps

module pll_digital_top (

    // =========================================================
    // CLOCKS / RESET / CONTROL
    // =========================================================

    input  wire                    ref_clk,

    // Fast clock used only by the phase-error TDC.
    // Target frequency = 200 MHz.
    input  wire                    tdc_clk,

    // Slower digital control clock.
    // Target frequency = 50 MHz.
    //
    // Controller FSM, lock detector and PI filter operate
    // in this clock domain.
    input  wire                    ctrl_clk,

    input  wire                    reset_n,
    input  wire                    start,


    // =========================================================
    // EXTERNAL OSCILLATOR / VCO
    // =========================================================

    input  wire                    vco_clk,


    // =========================================================
    // FEEDBACK DIVIDER CONTROL
    // =========================================================

    input  wire [7:0]              divide_value,


    // =========================================================
    // MAIN OUTPUTS
    // =========================================================

    output wire [9:0]              tuning_word,

    output wire                    feedback_clk,

    output wire                    locked,


    // =========================================================
    // DEBUG / VERIFICATION OUTPUTS
    // =========================================================

    output wire                    UP,
    output wire                    DOWN,

    // These outputs are the CONTROL-DOMAIN phase error.
    //
    // The raw TDC phase error first crosses through
    // phase_error_cdc before appearing here.
    output wire [7:0]              phase_error,
    output wire                    error_valid,

    output wire                    sat_high,
    output wire                    sat_low,

    output wire [2:0]              controller_state,

    output wire [7:0]              kp_debug,
    output wire [7:0]              ki_debug,

    output wire                    loop_enable
);


    // =========================================================
    // INTERNAL SIGNALS
    // =========================================================


    // ---------------------------------------------------------
    // Controller gain signals
    // ---------------------------------------------------------

    wire [7:0] kp_internal;
    wire [7:0] ki_internal;


    assign kp_debug = kp_internal;
    assign ki_debug = ki_internal;


    // ---------------------------------------------------------
    // RAW TDC OUTPUTS
    //
    // These signals belong to the 200 MHz TDC clock domain.
    // They MUST NOT directly drive the PI/controller domain.
    // ---------------------------------------------------------

    wire [7:0] tdc_phase_error;
    wire       tdc_error_valid;


    // ---------------------------------------------------------
    // CDC status
    // ---------------------------------------------------------

    wire cdc_busy;


    // =========================================================
    // 1. PHASE / FREQUENCY DETECTOR
    // =========================================================
    //
    // Compares:
    //
    //      ref_clk
    //          versus
    //      feedback_clk
    //
    // Outputs:
    //
    //      UP
    //      DOWN
    //
    // Pulse widths represent the phase/frequency difference.
    // =========================================================

    phase_frequency_detector u_pfd (

        .ref_clk (ref_clk),

        .fb_clk  (feedback_clk),

        .reset_n (reset_n),

        .UP       (UP),

        .DOWN     (DOWN)

    );


    // =========================================================
    // 2. DIGITAL PHASE-ERROR TDC
    // =========================================================
    //
    // CLOCK DOMAIN:
    //
    //      tdc_clk = 200 MHz
    //
    // The fast TDC clock preserves approximately:
    //
    //      5 ns measurement resolution
    //
    // The TDC converts UP/DOWN pulse widths into a signed
    // two's-complement 8-bit phase-error value.
    // =========================================================

    phase_error_tdc u_tdc (

        .tdc_clk     (tdc_clk),

        .reset_n     (reset_n),

        .ref_clk          (ref_clk),

        .feedback_clk       (feedback_clk),

        .phase_error (tdc_phase_error),

        .error_valid (tdc_error_valid)

    );


    // =========================================================
    // 3. PHASE-ERROR CLOCK-DOMAIN CROSSING
    // =========================================================
    //
    // SOURCE DOMAIN:
    //
    //      tdc_clk = 200 MHz
    //
    // DESTINATION DOMAIN:
    //
    //      ctrl_clk = 50 MHz
    //
    // A request/acknowledge toggle handshake transfers:
    //
    //      tdc_phase_error
    //
    // safely into the slower digital-control domain.
    //
    // phase_error and error_valid below therefore belong to
    // the ctrl_clk domain.
    // =========================================================

    phase_error_cdc u_phase_error_cdc (

        .src_clk         (tdc_clk),

        .dst_clk         (ctrl_clk),

        .reset_n         (reset_n),

        .src_phase_error (tdc_phase_error),

        .src_valid       (tdc_error_valid),

        .dst_phase_error (phase_error),

        .dst_valid       (error_valid),

        .src_busy        (cdc_busy)

    );


    // =========================================================
    // 4. PI DIGITAL LOOP FILTER
    // =========================================================
    //
    // IMPORTANT:
    //
    // This block no longer runs at 200 MHz.
    //
    // It runs on:
    //
    //      ctrl_clk = 50 MHz
    //
    // This provides a 20 ns control timing budget while
    // allowing the TDC itself to retain 5 ns resolution.
    //
    // The port inside pi_loop_filter is still named tdc_clk
    // because that was the original module interface.
    //
    // Electrically/functionally we now connect ctrl_clk to it.
    // We can rename the internal module port later if desired.
    // =========================================================

    pi_loop_filter u_pi_filter (

        .tdc_clk      (ctrl_clk),

        .reset_n      (reset_n),

        .enable       (loop_enable),

        .phase_error  (phase_error),

        .error_valid  (error_valid),

        .kp           (kp_internal),

        .ki           (ki_internal),

        .tuning_word  (tuning_word),

        .sat_high     (sat_high),

        .sat_low      (sat_low)

    );


    // =========================================================
    // 5. PROGRAMMABLE FEEDBACK DIVIDER
    // =========================================================
    //
    // CLOCK DOMAIN:
    //
    //      vco_clk
    //
    // Example:
    //
    //      VCO = 40 MHz
    //      divide_value = 4
    //
    // gives:
    //
    //      feedback_clk = 10 MHz
    //
    // which is compared with ref_clk by the PFD.
    // =========================================================

    feedback_divider u_feedback_divider (

        .vco_clk       (vco_clk),

        .reset_n       (reset_n),

        .enable        (1'b1),

        .divide_value  (divide_value),

        .feedback_clk  (feedback_clk)

    );


    // =========================================================
    // 6. LOCK DETECTOR
    // =========================================================
    //
    // CLOCK DOMAIN:
    //
    //      ctrl_clk = 50 MHz
    //
    // It now receives only CDC-safe phase-error samples.
    // =========================================================

    lock_detector u_lock_detector (

        .tdc_clk      (ctrl_clk),

        .reset_n      (reset_n),

        .enable       (loop_enable),

        .phase_error  (phase_error),

        .error_valid  (error_valid),

        .locked       (locked)

    );


    // =========================================================
    // 7. PLL CONTROLLER / GAIN-SCHEDULING FSM
    // =========================================================
    //
    // CLOCK DOMAIN:
    //
    //      ctrl_clk = 50 MHz
    //
    // States:
    //
    //      RESET
    //      IDLE
    //      ACQUIRE
    //      TRACK
    //      LOCKED
    //      REACQUIRE
    //
    // The controller selects Kp/Ki according to PLL state.
    // =========================================================

    pll_controller u_controller (

        .tdc_clk      (ctrl_clk),

        .reset_n      (reset_n),

        .start        (start),

        .phase_error  (phase_error),

        .error_valid  (error_valid),

        .locked       (locked),

        .loop_enable  (loop_enable),

        .kp           (kp_internal),

        .ki           (ki_internal),

        .state        (controller_state)

    );


endmodule
