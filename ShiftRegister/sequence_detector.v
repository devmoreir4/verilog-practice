module sequence_detector (
    input wire Clk, Reset,
    input wire In,
    output reg Detected
);
    typedef enum reg [1:0] {S0, S1, S2, S3} state_t;
    state_t state, next_state;

    always @(posedge Clk or posedge Reset) begin
        if (Reset)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        case (state)
            S0: next_state = (In == 1) ? S1 : S0;
            S1: next_state = (In == 0) ? S2 : S1;
            S2: next_state = (In == 1) ? S3 : S0;
            S3: next_state = S0;
        endcase
    end

    assign Detected = (state == S3);  // Detecta a sequência "101"
endmodule

// Uma FSM detecta uma sequência específica, como 101, em uma entrada serial.
