`timescale 1ns/1ps

module frequency_detector_tb;


    reg tdc_clk;
    reg reset_n;
    reg enable;

    reg ref_clk;
    reg feedback_clk;

    reg real fb_half_period;


    wire signed [7:0] freq_error;
    wire freq_valid;


    frequency_detector #(
        .WINDOW_CYCLES(16'd400)
    )
    dut (
        .tdc_clk(tdc_clk),
        .reset_n(reset_n),
        .enable(enable),

        .ref_clk(ref_clk),
        .feedback_clk(feedback_clk),

        .freq_error(freq_error),
        .freq_valid(freq_valid)
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
    // 10 MHz REFERENCE CLOCK
    // =========================================================

    initial begin

        ref_clk = 1'b0;

        forever #50
            ref_clk = ~ref_clk;

    end


    // =========================================================
    // VARIABLE FEEDBACK CLOCK
    // =========================================================

    initial begin

        feedback_clk = 1'b0;

        forever begin

            #(fb_half_period)

            feedback_clk =
                ~feedback_clk;

        end

    end


    // =========================================================
    // DISPLAY FREQUENCY MEASUREMENTS
    // =========================================================

    always @(posedge tdc_clk) begin

        if (freq_valid) begin

            $display(
                "time=%0t  freq_error=%0d",
                $time,
                freq_error
            );

        end

    end


    // =========================================================
    // TEST SEQUENCE
    // =========================================================

    initial begin

        $dumpfile(
            "waveforms/frequency_detector.vcd"
        );

        $dumpvars(
            0,
            frequency_detector_tb
        );


        reset_n = 1'b0;
        enable  = 1'b0;


        // -----------------------------------------------------
        // TEST 1
        //
        // feedback = 8 MHz
        //
        // feedback is TOO SLOW.
        //
        // Expected:
        //
        // freq_error > 0
        // -----------------------------------------------------

        fb_half_period = 62.5;


        #100;

        reset_n = 1'b1;
        enable  = 1'b1;


        $display("");
        $display("TEST 1: feedback = 8 MHz");
        $display("Expected positive frequency error");
        $display("");


        #10000;


        // -----------------------------------------------------
        // TEST 2
        //
        // feedback = 10 MHz
        //
        // Expected:
        //
        // freq_error approximately 0
        // -----------------------------------------------------

        $display("");
        $display("TEST 2: feedback = 10 MHz");
        $display("Expected frequency error near 0");
        $display("");


        fb_half_period = 50.0;


        #10000;


        // -----------------------------------------------------
        // TEST 3
        //
        // feedback = 12 MHz
        //
        // feedback is TOO FAST.
        //
        // Expected:
        //
        // freq_error < 0
        // -----------------------------------------------------

        $display("");
        $display("TEST 3: feedback = 12 MHz");
        $display("Expected negative frequency error");
        $display("");


        fb_half_period =
            41.6667;


        #10000;


        $display("");
        $display(
            "FREQUENCY DETECTOR TEST COMPLETE"
        );
        $display("");


        $finish;

    end


endmodule
