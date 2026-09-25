`timescale 1ns/1ps

module lock_detector_tb;

    reg tdc_clk;
    reg reset_n;
    reg enable;

    reg signed [7:0] phase_error;
    reg error_valid;

    wire locked;


    lock_detector dut (
        .tdc_clk     (tdc_clk),
        .reset_n     (reset_n),
        .enable      (enable),
        .phase_error (phase_error),
        .error_valid (error_valid),
        .locked      (locked)
    );


    // 200 MHz clock
    initial begin

        tdc_clk = 1'b0;

        forever #2.5
            tdc_clk = ~tdc_clk;

    end


    // ---------------------------------------------------------
    // Send one valid phase-error measurement
    // ---------------------------------------------------------

    task send_error;

        input signed [7:0] value;

        begin

            @(negedge tdc_clk);

            phase_error = value;
            error_valid = 1'b1;

            @(negedge tdc_clk);

            error_valid = 1'b0;

            @(negedge tdc_clk);

        end

    endtask


    initial begin

        $dumpfile("waveforms/lock_detector.vcd");
        $dumpvars(0, lock_detector_tb);

        reset_n     = 1'b0;
        enable      = 1'b1;

        phase_error = 8'sd0;
        error_valid = 1'b0;


        // Reset

        #20;

        reset_n = 1'b1;


        // =====================================================
        // TEST 1
        //
        // Send only 7 good measurements.
        //
        // Should NOT lock yet.
        // =====================================================

        send_error( 8'sd1);
        send_error(-8'sd1);
        send_error( 8'sd2);
        send_error( 8'sd0);
        send_error( 8'sd1);
        send_error(-8'sd2);
        send_error( 8'sd1);


        // =====================================================
        // TEST 2
        //
        // Eighth consecutive good measurement.
        //
        // PLL should now become locked.
        // =====================================================

        send_error(8'sd0);


        // =====================================================
        // TEST 3
        //
        // Errors 3 and 4 are outside LOCK_THRESHOLD,
        // but below LOSS_THRESHOLD.
        //
        // Since we're already locked, we should remain locked.
        // =====================================================

        send_error(8'sd3);
        send_error(8'sd4);


        // =====================================================
        // TEST 4
        //
        // Two large bad measurements.
        //
        // Not enough to lose lock yet.
        // =====================================================

        send_error(8'sd6);
        send_error(8'sd7);


        // =====================================================
        // TEST 5
        //
        // Third consecutive bad measurement.
        //
        // Lock should now be lost.
        // =====================================================

        send_error(8'sd8);


        // =====================================================
        // TEST 6
        //
        // Reacquire lock using negative/positive small errors.
        // Tests absolute-value logic.
        // =====================================================

        send_error(-8'sd1);
        send_error( 8'sd1);
        send_error(-8'sd2);
        send_error( 8'sd0);
        send_error(-8'sd1);
        send_error( 8'sd2);
        send_error(-8'sd1);
        send_error( 8'sd0);


        // =====================================================
        // TEST 7
        //
        // Disable detector.
        //
        // locked should return to zero.
        // =====================================================

        @(negedge tdc_clk);

        enable = 1'b0;

        #20;


        $finish;

    end


    // Print state whenever new measurement arrives

    always @(posedge tdc_clk) begin

        if (error_valid) begin

            $display(
                "time=%0t error=%0d abs_error=%0d lock_count=%0d loss_count=%0d locked=%b",
                $time,
                phase_error,
                dut.abs_error,
                dut.lock_count,
                dut.loss_count,
                locked
            );

        end

    end

endmodule
