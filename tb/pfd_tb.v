`timescale 1ns/1ps

module pfd_tb;

    reg ref_clk;
    reg fb_clk;
    reg reset_n;

    wire UP;
    wire DOWN;


    // DUT instantiation
    phase_frequency_detector dut (
        .ref_clk(ref_clk),
        .fb_clk(fb_clk),
        .reset_n(reset_n),
        .UP(UP),
        .DOWN(DOWN)
    );


    initial begin

        // Waveform file
        $dumpfile("waveforms/pfd.vcd");
        $dumpvars(0, pfd_tb);


        // Initial values
        ref_clk = 0;
        fb_clk  = 0;
        reset_n = 0;


        // -------------------------
        // RESET TEST
        // -------------------------
        #20;
        reset_n = 1;


        // -------------------------
        // CASE 1
        // ref_clk arrives FIRST
        // Expect UP pulse
        // -------------------------

        #20;

        ref_clk = 1;
        #5;
        ref_clk = 0;

        // fb_clk comes 10 ns later
        #10;

        fb_clk = 1;
        #5;
        fb_clk = 0;


        // Wait before next experiment
        #30;


        // -------------------------
        // CASE 2
        // fb_clk arrives FIRST
        // Expect DOWN pulse
        // -------------------------

        fb_clk = 1;
        #5;
        fb_clk = 0;

        // ref_clk comes later
        #12;

        ref_clk = 1;
        #5;
        ref_clk = 0;


        #30;


        // -------------------------
        // CASE 3
        // Almost aligned clocks
        // Expect very small UP pulse
        // -------------------------

        ref_clk = 1;

        #1;

        fb_clk = 1;

        #4;

        ref_clk = 0;

        #1;

        fb_clk = 0;


        #30;


        // -------------------------
        // RESET AGAIN
        // -------------------------

        reset_n = 0;

        #10;

        reset_n = 1;


        #20;

        $finish;

    end


    // Print values in terminal
    initial begin
        $monitor(
            "time=%0t ref=%b fb=%b reset_n=%b UP=%b DOWN=%b",
            $time,
            ref_clk,
            fb_clk,
            reset_n,
            UP,
            DOWN
        );
    end

endmodule
