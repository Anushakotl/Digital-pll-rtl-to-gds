`timescale 1ns/1ps

module pi_loop_filter_tb;

    // =========================================================
    // TESTBENCH SIGNALS
    // =========================================================

    reg tdc_clk;
    reg reset_n;
    reg enable;

    reg signed [7:0] phase_error;
    reg              error_valid;

    reg signed [7:0] kp;
    reg signed [7:0] ki;

    wire [9:0] tuning_word;
    wire       sat_high;
    wire       sat_low;

    integer pass_count;
    integer fail_count;


    // =========================================================
    // DUT INSTANTIATION
    // =========================================================

    pi_loop_filter dut (
        .tdc_clk     (tdc_clk),
        .reset_n     (reset_n),
        .enable      (enable),

        .phase_error (phase_error),
        .error_valid (error_valid),

        .kp           (kp),
        .ki           (ki),

        .tuning_word  (tuning_word),
        .sat_high     (sat_high),
        .sat_low      (sat_low)
    );


    // =========================================================
    // 200 MHz TDC CLOCK
    //
    // Period = 5 ns
    // =========================================================

    initial begin
        tdc_clk = 1'b0;

        forever #2.5 tdc_clk = ~tdc_clk;
    end


    // =========================================================
    // TASK: APPLY ONE PHASE ERROR
    //
    // error_valid stays HIGH for exactly one clock cycle.
    //
    // We also check:
    //
    // tuning_word
    // integrator
    // saturation flags
    // =========================================================

    task apply_error_and_check;

        input signed [7:0]  test_error;
        input        [9:0]  expected_tuning;
        input signed [23:0] expected_integrator;
        input               expected_sat_high;
        input               expected_sat_low;

        begin

            // Change stimulus on negative edge so that signals
            // are stable before the next positive edge.

            @(negedge tdc_clk);

            phase_error = test_error;
            error_valid = 1'b1;


            // One positive edge occurs between these two
            // negative edges. The PI controller updates there.

            @(negedge tdc_clk);

            error_valid = 1'b0;

            #0.1;


            // Check results

            if ((tuning_word    === expected_tuning)     &&
                (dut.integrator === expected_integrator) &&
                (sat_high       === expected_sat_high)   &&
                (sat_low        === expected_sat_low)) begin

                $display(
                    "PASS  time=%0t  error=%0d  tuning=%0d  integrator=%0d  sat_high=%b  sat_low=%b",
                    $time,
                    test_error,
                    tuning_word,
                    dut.integrator,
                    sat_high,
                    sat_low
                );

                pass_count = pass_count + 1;

            end

            else begin

                $display(
                    "FAIL  time=%0t  error=%0d  tuning=%0d expected=%0d  integrator=%0d expected_int=%0d  satH=%b satL=%b",
                    $time,
                    test_error,
                    tuning_word,
                    expected_tuning,
                    dut.integrator,
                    expected_integrator,
                    sat_high,
                    sat_low
                );

                fail_count = fail_count + 1;

            end

        end

    endtask


    // =========================================================
    // TASK: RESET CONTROLLER
    // =========================================================

    task reset_controller;

        begin

            @(negedge tdc_clk);

            reset_n    = 1'b0;
            error_valid = 1'b0;
            phase_error = 8'sd0;

            // Hold reset for two clock cycles.

            repeat (2)
                @(negedge tdc_clk);

            reset_n = 1'b1;

            @(negedge tdc_clk);

        end

    endtask


    // =========================================================
    // MAIN TEST SEQUENCE
    // =========================================================

    initial begin

        // -----------------------------------------------------
        // Initial values
        // -----------------------------------------------------

        reset_n     = 1'b0;
        enable      = 1'b1;

        phase_error = 8'sd0;
        error_valid = 1'b0;

        // Q4.4 values:
        //
        // kp = 16 -> 1.0
        // ki = 2  -> 0.125

        kp = 8'sd16;
        ki = 8'sd2;

        pass_count = 0;
        fail_count = 0;


        // -----------------------------------------------------
        // Waveform dump
        // -----------------------------------------------------

        $dumpfile("waveforms/pi_loop_filter.vcd");
        $dumpvars(0, pi_loop_filter_tb);


        // -----------------------------------------------------
        // INITIAL RESET
        // -----------------------------------------------------

        repeat (4)
            @(negedge tdc_clk);

        reset_n = 1'b1;

        @(negedge tdc_clk);

        if ((tuning_word === 10'd512) &&
            (dut.integrator === 24'sd0)) begin

            $display(
                "PASS  RESET: tuning_word=%0d integrator=%0d",
                tuning_word,
                dut.integrator
            );

            pass_count = pass_count + 1;

        end

        else begin

            $display("FAIL  RESET");

            fail_count = fail_count + 1;

        end


        // =====================================================
        // TEST 1
        // Positive error +6
        //
        // P = 6 * 16 = 96
        // I_delta = 6 * 2 = 12
        //
        // control = 8192 + 96 + 12 = 8300
        //
        // 8300 / 16 = 518.75
        //
        // tuning = 518
        // integrator = 12
        // =====================================================

        apply_error_and_check(
            8'sd6,
            10'd518,
            24'sd12,
            1'b0,
            1'b0
        );


        // =====================================================
        // TEST 2
        // Another +6
        //
        // integrator = 12 + 12 = 24
        //
        // tuning = 519
        // =====================================================

        apply_error_and_check(
            8'sd6,
            10'd519,
            24'sd24,
            1'b0,
            1'b0
        );


        // =====================================================
        // TEST 3
        // Another +6
        //
        // integrator = 36
        // tuning = 520
        // =====================================================

        apply_error_and_check(
            8'sd6,
            10'd520,
            24'sd36,
            1'b0,
            1'b0
        );


        // =====================================================
        // TEST 4
        // Negative error -6
        //
        // Integral decreases:
        //
        // 36 - 12 = 24
        //
        // P = -96
        //
        // control = 8192 - 96 + 24 = 8120
        //
        // tuning = 507
        // =====================================================

        apply_error_and_check(
            -8'sd6,
            10'd507,
            24'sd24,
            1'b0,
            1'b0
        );


        // =====================================================
        // TEST 5
        // Zero phase error
        //
        // Integrator remains 24.
        //
        // The integrator still contributes to the control
        // output even though current error is zero.
        //
        // control = 8192 + 24
        //         = 8216
        //
        // tuning = 513
        // =====================================================

        apply_error_and_check(
            8'sd0,
            10'd513,
            24'sd24,
            1'b0,
            1'b0
        );


        // =====================================================
        // TEST 6
        // ENABLE = 0
        //
        // Apply a large error.
        //
        // Controller must HOLD its previous state.
        // =====================================================

        enable = 1'b0;

        apply_error_and_check(
            8'sd20,
            10'd513,
            24'sd24,
            1'b0,
            1'b0
        );

        enable = 1'b1;


        // =====================================================
        // TEST 7
        // error_valid = 0
        //
        // Change phase_error, but do NOT send error_valid.
        //
        // tuning_word and integrator must remain unchanged.
        // =====================================================

        @(negedge tdc_clk);

        phase_error = 8'sd50;
        error_valid = 1'b0;

        repeat (3)
            @(posedge tdc_clk);

        @(negedge tdc_clk);

        if ((tuning_word === 10'd513) &&
            (dut.integrator === 24'sd24)) begin

            $display(
                "PASS  error_valid gating: controller correctly held state"
            );

            pass_count = pass_count + 1;

        end

        else begin

            $display(
                "FAIL  error_valid gating"
            );

            fail_count = fail_count + 1;

        end


        // =====================================================
        // HIGH SATURATION / ANTI-WINDUP TEST
        // =====================================================

        reset_controller();

        // Temporarily use stronger gains.
        //
        // kp = 80 / 16 = 5.0
        // ki = 16 / 16 = 1.0

        kp = 8'sd80;
        ki = 8'sd16;


        // Large positive error.
        //
        // Output should saturate at 1023.
        //
        // Anti-windup should prevent integrator accumulation.

        apply_error_and_check(
            8'sd127,
            10'd1023,
            24'sd0,
            1'b1,
            1'b0
        );


        // Apply another large positive error.
        //
        // Integrator must STILL remain zero.

        apply_error_and_check(
            8'sd127,
            10'd1023,
            24'sd0,
            1'b1,
            1'b0
        );


        // =====================================================
        // RECOVERY FROM HIGH SATURATION
        //
        // Negative error should be allowed because it moves
        // the controller back toward the valid range.
        //
        // I_delta = -10 * 16 = -160
        //
        // integrator = -160
        //
        // control:
        //
        // 8192 - 800 - 160 = 7232
        //
        // tuning = 452
        // =====================================================

        apply_error_and_check(
            -8'sd10,
            10'd452,
            -24'sd160,
            1'b0,
            1'b0
        );


        // =====================================================
        // LOW SATURATION TEST
        // =====================================================

        reset_controller();

        kp = 8'sd80;
        ki = 8'sd16;


        // Large negative error.
        //
        // Output should saturate at zero.
        //
        // Integrator should remain zero due to anti-windup.

        apply_error_and_check(
            -8'sd127,
            10'd0,
            24'sd0,
            1'b0,
            1'b1
        );


        // Again: make sure integrator doesn't wind down.

        apply_error_and_check(
            -8'sd127,
            10'd0,
            24'sd0,
            1'b0,
            1'b1
        );


        // =====================================================
        // RECOVERY FROM LOW SATURATION
        //
        // Positive error should be accepted.
        //
        // I_delta = +160
        //
        // P = +800
        //
        // control = 8192 + 800 + 160
        //         = 9152
        //
        // tuning = 572
        // =====================================================

        apply_error_and_check(
            8'sd10,
            10'd572,
            24'sd160,
            1'b0,
            1'b0
        );


        // =====================================================
        // TEST SUMMARY
        // =====================================================

        $display("");
        $display("===========================================");
        $display("PI LOOP FILTER TEST COMPLETE");
        $display("PASS = %0d", pass_count);
        $display("FAIL = %0d", fail_count);
        $display("===========================================");

        #20;

        $finish;

    end

endmodule
