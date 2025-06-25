module seq_detector_1011 (
    input clk,
    input reset,
    input data_in,
    output reg detected
);

    reg [1:0] state, next_state;

    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        detected = 0;
        case (state)
            S0: next_state = (data_in) ? S1 : S0;
            S1: next_state = (data_in) ? S2 : S0;
            S2: next_state = (data_in) ? S2 : S3;
            S3: begin
                next_state = (data_in) ? S1 : S0;
                if (data_in)
                    detected = 1;
            end
            default: next_state = S0;
        endcase
    end

endmodule
