`timescale 1ns/1ps

module pll_tb;


    // =========================================================
    // TESTBENCH INPUTS
    // =========================================================

    reg ref_clk;

    // Fast phase-measurement clock
    // 200 MHz -> 5 ns period
    reg tdc_clk;

    // Slower digital-control clock
    // 50 MHz -> 20 ns period
    reg ctrl_clk;

    reg reset_n;
    reg start;

    reg [7:0] divide_value;


    // =========================================================
    // VARIABLE REFERENCE CLOCK PERIOD
    // =========================================================
    //
    // Initially:
    //
    // half period = 50 ns
    // full period = 100 ns
    // frequency   = 10 MHz
    //
    // Later:
    //
    // half period = 45.4545 ns
    // frequency   ≈ 11 MHz
    //
    // =========================================================

    real ref_half_period;


    // =========================================================
    // DUT OUTPUTS
    // =========================================================

    wire vco_clk;
    wire feedback_clk;

    wire [9:0] tuning_word;

    wire locked;

    wire UP;
    wire DOWN;

    // Control-domain phase-error output
    wire signed [7:0] phase_error;

    // One ctrl_clk-cycle valid pulse
    wire error_valid;

    wire sat_high;
    wire sat_low;

    wire [2:0] controller_state;

    wire signed [7:0] kp_debug;
    wire signed [7:0] ki_debug;

    wire loop_enable;


    // =========================================================
    // TEST VARIABLES
    // =========================================================

    integer timeout_count;

    real first_lock_time;
    real second_lock_time;


    // =========================================================
    // DUT
    // =========================================================

    pll_sim_top dut (

        .ref_clk           (ref_clk),

        .tdc_clk           (tdc_clk),

        .ctrl_clk          (ctrl_clk),

        .reset_n           (reset_n),

        .start             (start),

        .divide_value      (divide_value),

        .vco_clk           (vco_clk),

        .feedback_clk      (feedback_clk),

        .tuning_word       (tuning_word),

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


    // =========================================================
    // REFERENCE CLOCK
    // =========================================================
    //
    // Initial frequency = 10 MHz
    //
    // Period = 100 ns
    // Half period = 50 ns
    //
    // =========================================================

    initial begin

        ref_clk = 1'b0;

        ref_half_period = 50.0;

        forever begin

            #(ref_half_period)
                ref_clk = ~ref_clk;

        end

    end


    // =========================================================
    // FAST TDC CLOCK
    // =========================================================
    //
    // Frequency = 200 MHz
    //
    // Period = 5 ns
    // Half period = 2.5 ns
    //
    // Used by:
    //
    //      phase_error_tdc
    //
    // =========================================================

    initial begin

        tdc_clk = 1'b0;

        forever #2.5
            tdc_clk = ~tdc_clk;

    end


    // =========================================================
    // CONTROL CLOCK
    // =========================================================
    //
    // Frequency = 50 MHz
    //
    // Period = 20 ns
    // Half period = 10 ns
    //
    // Used by:
    //
    //      PI loop filter
    //      lock detector
    //      controller FSM
    //
    // =========================================================

    initial begin

        ctrl_clk = 1'b0;

        forever #10.0
            ctrl_clk = ~ctrl_clk;

    end


    // =========================================================
    // MAIN TEST
    // =========================================================

    initial begin


        // -----------------------------------------------------
        // Waveforms
        // -----------------------------------------------------

        $dumpfile("waveforms/pll_full.vcd");

        $dumpvars(0, pll_tb);


        // -----------------------------------------------------
        // Initial conditions
        // -----------------------------------------------------

        reset_n      = 1'b0;

        start        = 1'b0;

        divide_value = 8'd4;


        // -----------------------------------------------------
        // Reset
        // -----------------------------------------------------

        #100;

        reset_n = 1'b1;


        #100;

        start = 1'b1;


        $display("");

        $display("============================================");

        $display("PLL STARTED");

        $display("Reference clock = 10 MHz");

        $display("TDC clock       = 200 MHz");

        $display("Control clock   = 50 MHz");

        $display("Divider         = 4");

        $display("Target VCO frequency approximately 40 MHz");

        $display("============================================");

        $display("");


        // =====================================================
        // WAIT FOR INITIAL LOCK
        // =====================================================
        //
        // We now wait using ctrl_clk because locked is generated
        // inside the 50 MHz control domain.
        //
        // 10000 ctrl_clk cycles:
        //
        //      10000 * 20 ns = 200 us maximum timeout
        //
        // =====================================================

        timeout_count = 0;


        while ((locked !== 1'b1) &&
               (timeout_count < 10000)) begin

            @(posedge ctrl_clk);

            timeout_count = timeout_count + 1;

        end


        if (locked === 1'b1) begin

            first_lock_time = $realtime;


            $display("");

            $display("============================================");

            $display("PASS: INITIAL PLL LOCK");

            $display(
                "Lock time    = %0.2f ns",
                first_lock_time
            );

            $display(
                "Tuning word  = %0d",
                tuning_word
            );

            $display(
                "Phase error  = %0d",
                phase_error
            );

            $display(
                "FSM state    = %0d",
                controller_state
            );

            $display("============================================");

            $display("");

        end


        else begin

            $display("");

            $display("============================================");

            $display("WARNING: INITIAL LOCK TIMEOUT");

            $display(
                "Tuning word = %0d",
                tuning_word
            );

            $display(
                "Phase error = %0d",
                phase_error
            );

            $display(
                "FSM state   = %0d",
                controller_state
            );

            $display("============================================");

            $display("");

        end


        // =====================================================
        // HOLD INITIAL OPERATING POINT
        // =====================================================

        #10000;


        // =====================================================
        // REFERENCE-FREQUENCY DISTURBANCE
        // =====================================================
        //
        // Change reference:
        //
        //      10 MHz -> approximately 11 MHz
        //
        // With divide_value = 4:
        //
        //      desired VCO ≈ 44 MHz
        //
        // Expected sequence:
        //
        //      LOCKED
        //
        //          ↓
        //
        //      lock lost
        //
        //          ↓
        //
        //      REACQUIRE
        //
        //          ↓
        //
        //      TRACK
        //
        //          ↓
        //
        //      LOCKED again
        //
        // =====================================================

        $display("");

        $display("============================================");

        $display("APPLYING REFERENCE FREQUENCY STEP");

        $display("10 MHz -> approximately 11 MHz");

        $display("New VCO target approximately 44 MHz");

        $display("============================================");

        $display("");


        ref_half_period = 45.4545;


        // =====================================================
        // WAIT FOR LOSS OF LOCK
        // =====================================================
        //
        // 5000 ctrl_clk cycles:
        //
        //      5000 * 20 ns = 100 us
        //
        // =====================================================

        timeout_count = 0;


        while ((locked === 1'b1) &&
               (timeout_count < 5000)) begin

            @(posedge ctrl_clk);

            timeout_count = timeout_count + 1;

        end


        if (locked === 1'b0) begin

            $display(
                "Lock loss detected at time %0.2f ns",
                $realtime
            );

        end

        else begin

            $display(
                "WARNING: LOCK LOSS NOT DETECTED"
            );

        end


        // =====================================================
        // WAIT FOR REACQUISITION
        // =====================================================

        timeout_count = 0;


        while ((locked !== 1'b1) &&
               (timeout_count < 10000)) begin

            @(posedge ctrl_clk);

            timeout_count = timeout_count + 1;

        end


        if (locked === 1'b1) begin

            second_lock_time = $realtime;


            $display("");

            $display("============================================");

            $display("PASS: PLL REACQUIRED LOCK");

            $display(
                "Time         = %0.2f ns",
                second_lock_time
            );

            $display(
                "Tuning word  = %0d",
                tuning_word
            );

            $display(
                "Phase error  = %0d",
                phase_error
            );

            $display(
                "FSM state    = %0d",
                controller_state
            );

            $display("============================================");

            $display("");

        end


        else begin

            $display("");

            $display("============================================");

            $display("WARNING: REACQUISITION TIMEOUT");

            $display(
                "Tuning word = %0d",
                tuning_word
            );

            $display(
                "Phase error = %0d",
                phase_error
            );

            $display(
                "FSM state   = %0d",
                controller_state
            );

            $display("============================================");

            $display("");

        end


        // Let the PLL run a little longer after reacquisition.

        #10000;


        $display("");

        $display("============================================");

        $display("FULL PLL SIMULATION COMPLETE");

        $display("============================================");

        $display("");


        $finish;

    end


    // =========================================================
    // CONTROL-DOMAIN DEBUG PRINT
    // =========================================================
    //
    // IMPORTANT:
    //
    // error_valid now belongs to ctrl_clk.
    //
    // Therefore we should NOT monitor it using:
    //
    //      @(posedge tdc_clk)
    //
    // We monitor it using ctrl_clk.
    //
    // =========================================================

    always @(posedge ctrl_clk) begin

        if (error_valid) begin

            $display(
                "time=%0t state=%0d error=%0d tuning=%0d kp=%0d ki=%0d locked=%b",
                $time,
                controller_state,
                phase_error,
                tuning_word,
                kp_debug,
                ki_debug,
                locked
            );

        end

    end


endmodule
