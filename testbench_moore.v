module testbench_moore;

    reg clk, reset, data_in;
    wire detected;

    // Instantiate the Moore FSM
    seq_detector_1011_moore uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .detected(detected)
    );

    // Clock generation: toggles every 5 time units (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Dump file for GTKWave
        $dumpfile("waveform.vcd");
        $dumpvars(0, testbench_moore);

        $display("Time\tInpu
