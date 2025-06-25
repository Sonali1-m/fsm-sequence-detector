module seq_detector_1011_moore (
    input clk,
    input reset,
    input data_in,
    output reg detected
);

    reg [2:0] state, next_state;

    // State encoding
    parameter S0 = 3'b000,
              S1 = 3'b001,
              S2 = 3'b010,
              S3 = 3'b011,
              S4 = 3'b100;

    // Sequential block
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (state)
            S0: next_state = data_in ? S1 : S0;
            S1: next_state = data_in ? S2 : S0;
            S2: next_state = data_in ? S2 : S3;
            S3: next_state = data_in ? S4 : S0;
            S4: next_state = data_in ? S1 : S0;
            default: next_state = S0;
        endcase
    end

    // Output logic
    always @(*) begin
        detected = (state == S4);  // Output is 1 only in final state
    end

endmodule
