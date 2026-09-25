`timescale 1ns/1ps

module frequency_acquisition_tb;


    // =========================================================
    // TESTBENCH SIGNALS
    // =========================================================

    reg tdc_clk;
    reg reset_n;
    reg enable;


    reg ref_clk;

    real ref_half_period;


    wire vco_clk;
    wire feedback_clk;


    wire signed [7:0] freq_error;
    wire              freq_valid;


    wire [9:0] tuning_word;
    wire       freq_locked;


    reg [7:0] divide_value;


    // =========================================================
    // FREQUENCY DETECTOR
    // =========================================================
    //
    // 2000 cycles of 200 MHz = 10 us measurement window.
    // =========================================================

    frequency_detector #(

        .WINDOW_CYCLES(16'd2000)

    ) u_frequency_detector (

        .tdc_clk       (tdc_clk),

        .reset_n       (reset_n),

        .enable        (enable),

        .ref_clk       (ref_clk),

        .feedback_clk  (feedback_clk),

        .freq_error    (freq_error),

        .freq_valid    (freq_valid)

    );


    // =========================================================
    // COARSE FREQUENCY ACQUISITION CONTROLLER
    // =========================================================

    frequency_acquisition u_frequency_acquisition (

        .tdc_clk       (tdc_clk),

        .reset_n       (reset_n),

        .enable        (enable),

        .freq_error    (freq_error),

        .freq_valid    (freq_valid),

        .tuning_word   (tuning_word),

        .freq_locked   (freq_locked)

    );


    // =========================================================
    // BEHAVIORAL VCO
    // =========================================================

    behavioral_vco u_vco (

        .reset_n       (reset_n),

        .tuning_word   (tuning_word),

        .vco_clk       (vco_clk)

    );


    // =========================================================
    // FEEDBACK DIVIDER
    // =========================================================

    feedback_divider u_feedback_divider (

        .vco_clk       (vco_clk),

        .reset_n       (reset_n),

        .enable        (enable),

        .divide_value  (divide_value),

        .feedback_clk  (feedback_clk)

    );


    // =========================================================
    // 200 MHz TDC CLOCK
    // =========================================================

    initial begin

        tdc_clk = 1'b0;

        forever #2.5
            tdc_clk = ~tdc_clk;

    end


    // =========================================================
    // VARIABLE REFERENCE CLOCK
    // =========================================================

    initial begin

        ref_clk = 1'b0;

        ref_half_period = 50.0;


        forever begin

            #(ref_half_period);

            ref_clk = ~ref_clk;

        end

    end


    // =========================================================
    // DISPLAY EACH FREQUENCY UPDATE
    // =========================================================

    always @(negedge tdc_clk) begin

        if (freq_valid) begin
            // assignments for this simulation time have updated.

            $display(
                "time=%0t  freq_error=%0d  tuning=%0d  freq_locked=%b  VCO=%0.3f MHz",
                $time,
                freq_error,
                tuning_word,
                freq_locked,
                u_vco.frequency_mhz
            );

        end

    end


    // =========================================================
    // TEST SEQUENCE
    // =========================================================

    initial begin


        $dumpfile(
            "waveforms/frequency_acquisition.vcd"
        );

        $dumpvars(
            0,
            frequency_acquisition_tb
        );


        reset_n      = 1'b0;
        enable       = 1'b0;

        divide_value = 8'd4;


        #100;


        reset_n = 1'b1;
        enable  = 1'b1;


        // =====================================================
        // TEST 1
        //
        // Reference = 10 MHz
        //
        // Initial:
        //
        // tuning = 512
        // VCO ≈ 37.5 MHz
        // FB  ≈ 9.375 MHz
        //
        // Expected:
        //
        // positive frequency error
        // tuning word increases
        // frequency converges near 10 MHz feedback
        // =====================================================

        $display("");
        $display("==============================================");
        $display("STAGE 1: ACQUIRE 10 MHz REFERENCE");
        $display("==============================================");
        $display("");


        ref_half_period = 50.0;


        #120000;


        // Check coarse acquisition.

        if (
            freq_locked &&
            tuning_word >= 10'd590 &&
            tuning_word <= 10'd640
        ) begin

            $display("");
            $display("PASS: 10 MHz COARSE FREQUENCY ACQUISITION");
            $display(
                "Final tuning word = %0d",
                tuning_word
            );
            $display("");

        end

        else begin

            $display("");
            $display("FAIL: 10 MHz COARSE FREQUENCY ACQUISITION");
            $display(
                "freq_locked = %b, tuning_word = %0d",
                freq_locked,
                tuning_word
            );
            $display("");

        end


        // =====================================================
        // TEST 2
        //
        // Change reference:
        //
        // 10 MHz -> approximately 11 MHz
        //
        // Half period:
        //
        // 1 / (2 * 11 MHz)
        // ≈ 45.4545 ns
        //
        // Expected target VCO:
        //
        // 11 MHz * 4 = 44 MHz
        //
        // Approx ideal code:
        //
        // ~777
        // =====================================================

        $display("");
        $display("==============================================");
        $display("STAGE 2: CHANGE REFERENCE 10 MHz -> 11 MHz");
        $display("==============================================");
        $display("");


        ref_half_period = 45.4545;


        #120000;


        if (
            freq_locked &&
            tuning_word >= 10'd750 &&
            tuning_word <= 10'd805
        ) begin

            $display("");
            $display("PASS: 11 MHz COARSE FREQUENCY ACQUISITION");
            $display(
                "Final tuning word = %0d",
                tuning_word
            );
            $display("");

        end

        else begin

            $display("");
            $display("FAIL: 11 MHz COARSE FREQUENCY ACQUISITION");
            $display(
                "freq_locked = %b, tuning_word = %0d",
                freq_locked,
                tuning_word
            );
            $display("");

        end


        $display("");
        $display("==============================================");
        $display("FREQUENCY ACQUISITION TEST COMPLETE");
        $display("==============================================");
        $display("");


        $finish;

    end


endmodule
