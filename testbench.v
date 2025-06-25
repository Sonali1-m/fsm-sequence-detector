module testbench;

    reg clk, reset, data_in;
    wire detected;

    seq_detector_1011 uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .detected(detected)
    );

    always #5 clk = ~clk;

    initial begin
        $display("Time\tInput\tDetected");
        $monitor("%g\t%b\t%b", $time, data_in, detected);

        clk = 0; reset = 1; data_in = 0;
        #10 reset = 0;

        #10 data_in = 1;
        #10 data_in = 0;
        #10 data_in = 1;
        #10 data_in = 1;

        #20 $finish;
    end

endmodule
