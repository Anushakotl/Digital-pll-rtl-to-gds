`timescale 1ns/1ps

module pll_digital_top (

    input  wire       ref_clk,

    input  wire       tdc_clk,

    input  wire       ctrl_clk,

    input  wire       reset_n,

    input  wire       start,

    input  wire       vco_clk,

    input  wire [7:0] divide_value,


    output wire [9:0] tuning_word,

    output wire       feedback_clk,

    output wire       locked,


    output wire       UP,
    output wire       DOWN,


    output wire [7:0] phase_error,

    output wire       error_valid,


    output wire       sat_high,
    output wire       sat_low,


    output wire [2:0] controller_state,

    output wire [7:0] kp_debug,
    output wire [7:0] ki_debug,

    output wire       loop_enable

);


    // =========================================================
    // CONTROLLER SIGNALS
    // =========================================================

    wire [7:0] kp_internal;
    wire [7:0] ki_internal;

    wire freq_acquire_enable;


    assign kp_debug =
        kp_internal;

    assign ki_debug =
        ki_internal;


    // =========================================================
    // FEEDBACK DIVIDER
    // =========================================================

    feedback_divider u_feedback_divider (

        .vco_clk       (vco_clk),

        .reset_n       (reset_n),

        .enable        (1'b1),

        .divide_value  (divide_value),

        .feedback_clk  (feedback_clk)

    );



    phase_frequency_detector u_pfd (

        .ref_clk (ref_clk),

        .fb_clk  (feedback_clk),

        .reset_n (reset_n),

        .UP      (UP),

        .DOWN    (DOWN)

    );

    wire [7:0] tdc_phase_error;

    wire tdc_error_valid;


    phase_error_tdc u_tdc (

        .tdc_clk       (tdc_clk),

        .reset_n       (reset_n),

        .ref_clk       (ref_clk),

        .feedback_clk  (feedback_clk),

        .phase_error   (tdc_phase_error),

        .error_valid   (tdc_error_valid)

    );

    wire phase_cdc_busy;


    phase_error_cdc u_phase_error_cdc (

        .src_clk         (tdc_clk),

        .dst_clk         (ctrl_clk),

        .reset_n         (reset_n),

        .src_phase_error (tdc_phase_error),

        .src_valid       (tdc_error_valid),

        .dst_phase_error (phase_error),

        .dst_valid       (error_valid),

        .src_busy        (phase_cdc_busy)

    );

    wire [7:0] raw_freq_error;

    wire raw_freq_valid;


    frequency_detector #(

        .WINDOW_CYCLES(16'd2000)

    ) u_frequency_detector (

        .tdc_clk       (tdc_clk),

        .reset_n       (reset_n),

        .enable        (start),

        .ref_clk       (ref_clk),

        .feedback_clk  (feedback_clk),

        .freq_error    (raw_freq_error),

        .freq_valid    (raw_freq_valid)

    );


    wire [7:0] ctrl_freq_error;

    wire ctrl_freq_valid;

    wire freq_cdc_busy;


    phase_error_cdc u_frequency_error_cdc (

        .src_clk         (tdc_clk),

        .dst_clk         (ctrl_clk),

        .reset_n         (reset_n),

        .src_phase_error (raw_freq_error),

        .src_valid       (raw_freq_valid),

        .dst_phase_error (ctrl_freq_error),

        .dst_valid       (ctrl_freq_valid),

        .src_busy        (freq_cdc_busy)

    );


    wire [9:0] coarse_tuning_word;

    wire freq_locked_internal;

    wire [9:0] pi_tuning_word;


    frequency_acquisition u_frequency_acquisition (

        .tdc_clk          (ctrl_clk),

        .reset_n          (reset_n),

        .enable           (freq_acquire_enable),

        .seed_tuning_word (pi_tuning_word),

        .freq_error       (ctrl_freq_error),

        .freq_valid       (ctrl_freq_valid),

        .tuning_word      (coarse_tuning_word),

        .freq_locked      (freq_locked_internal)

    );


    wire pi_load_tuning;


    assign pi_load_tuning =
        freq_acquire_enable
        &&
        freq_locked_internal;

    pi_loop_filter u_pi_filter (

        .tdc_clk          (ctrl_clk),

        .reset_n          (reset_n),

        .enable           (loop_enable),

        .load_tuning      (pi_load_tuning),

        .load_tuning_word (coarse_tuning_word),

        .phase_error      (phase_error),

        .error_valid      (error_valid),

        .kp               (kp_internal),

        .ki               (ki_internal),

        .tuning_word      (pi_tuning_word),

        .sat_high         (sat_high),

        .sat_low          (sat_low)

    );

    assign tuning_word =
        freq_acquire_enable
        ?
        coarse_tuning_word
        :
        pi_tuning_word;

    lock_detector u_lock_detector (

        .tdc_clk      (ctrl_clk),

        .reset_n      (reset_n),

        .enable       (loop_enable),

        .phase_error  (phase_error),

        .error_valid  (error_valid),

        .locked       (locked)

    );

    pll_controller u_controller (

        .tdc_clk              (ctrl_clk),

        .reset_n              (reset_n),

        .start                (start),

        .phase_error          (phase_error),

        .error_valid          (error_valid),

        .locked               (locked),

        .freq_locked          (freq_locked_internal),

        .loop_enable          (loop_enable),

        .freq_acquire_enable  (freq_acquire_enable),

        .kp                   (kp_internal),

        .ki                   (ki_internal),

        .state                (controller_state)

    );


endmodule
