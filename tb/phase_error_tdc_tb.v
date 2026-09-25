`timescale 1ns/1ps

module phase_error_tdc_tb;

    // ---------------------------------------------------------
    // Testbench signals
    // ---------------------------------------------------------

    reg tdc_clk;
    reg reset_n;
    reg UP;
    reg DOWN;

    wire signed [7:0] phase_error;
    wire error_valid;


    // ---------------------------------------------------------
    // Instantiate DUT
    // ---------------------------------------------------------

    phase_error_tdc dut (
        .tdc_clk     (tdc_clk),
        .reset_n     (reset_n),
        .UP          (UP),
        .DOWN        (DOWN),
        .phase_error (phase_error),
        .error_valid (error_valid)
    );


    // ---------------------------------------------------------
    // 200 MHz TDC clock
    //
    // Period = 5 ns
    // Half period = 2.5 ns
    // ---------------------------------------------------------

    initial begin
        tdc_clk = 1'b0;

        forever #2.5 tdc_clk = ~tdc_clk;
    end


    // ---------------------------------------------------------
    // Task: Generate an UP pulse
    //
    // width_ns tells us how long UP stays HIGH.
    // ---------------------------------------------------------

    task send_up_pulse;

        input integer width_ns;

        begin

            UP = 1'b1;

            #(width_ns);

            UP = 1'b0;

        end

    endtask


    // ---------------------------------------------------------
    // Task: Generate a DOWN pulse
    // ---------------------------------------------------------

    task send_down_pulse;

        input integer width_ns;

        begin

            DOWN = 1'b1;

            #(width_ns);

            DOWN = 1'b0;

        end

    endtask


    // ---------------------------------------------------------
    // Main stimulus
    // ---------------------------------------------------------

    initial begin

        // Initial conditions

        reset_n = 1'b0;

        UP   = 1'b0;
        DOWN = 1'b0;


        // -----------------------------------------------------
        // Dump waveform
        // -----------------------------------------------------

        $dumpfile("waveforms/phase_error_tdc.vcd");
        $dumpvars(0, phase_error_tdc_tb);


        // -----------------------------------------------------
        // RESET TEST
        // -----------------------------------------------------

        #20;

        reset_n = 1'b1;

        $display("---------------------------------------------");
        $display("RESET RELEASED");
        $display("---------------------------------------------");


        // =====================================================
        // TEST 1
        //
        // UP pulse = 20 ns
        //
        // TDC resolution = 5 ns
        //
        // Expected approximately:
        //
        // up_count = 4
        // phase_error = +4
        // =====================================================

        #20;

        $display("TEST 1: 20 ns UP pulse");

        send_up_pulse(20);

        // Allow synchronizer and measurement logic to finish

        #40;


        // =====================================================
        // TEST 2
        //
        // DOWN pulse = 30 ns
        //
        // Expected approximately:
        //
        // down_count = 6
        // phase_error = -6
        // =====================================================

        $display("TEST 2: 30 ns DOWN pulse");

        send_down_pulse(30);

        #40;


        // =====================================================
        // TEST 3
        //
        // UP and DOWN have equal duration.
        //
        // This directly checks:
        //
        // phase_error = up_count - down_count
        //
        // Expected approximately zero.
        // =====================================================

        $display("TEST 3: Equal UP/DOWN pulse");

        UP   = 1'b1;
        DOWN = 1'b1;

        #25;

        UP   = 1'b0;
        DOWN = 1'b0;

        #40;


        // =====================================================
        // TEST 4
        //
        // Counter saturation test.
        //
        // 700 ns / 5 ns = 140 counts
        //
        // But counter maximum = 127.
        //
        // Expected:
        //
        // phase_error = +127
        // =====================================================

        $display("TEST 4: Saturation test");

        send_up_pulse(700);

        #40;


        // =====================================================
        // TEST 5
        //
        // Reset during normal operation.
        // =====================================================

        $display("TEST 5: Reset test");

        UP = 1'b1;

        #15;

        reset_n = 1'b0;

        #10;

        UP = 1'b0;

        #10;

        reset_n = 1'b1;

        #40;


        // -----------------------------------------------------
        // End simulation
        // -----------------------------------------------------

        $display("---------------------------------------------");
        $display("TDC TESTBENCH COMPLETE");
        $display("---------------------------------------------");

        $finish;

    end


    // ---------------------------------------------------------
    // Print completed TDC measurements
    // ---------------------------------------------------------

    always @(posedge error_valid) begin

        $display(
            "TIME = %0t ns   phase_error = %0d",
            $time,
            phase_error
        );

    end


endmodule
