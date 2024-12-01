module shift_register (
    input wire Clk, Reset,
    input wire ShiftIn,
    output reg [3:0] Q
);
    always @(posedge Clk or posedge Reset) begin
        if (Reset)
            Q <= 4'b0000;
        else
            Q <= {Q[2:0], ShiftIn};  // Desloca para a direita
    end
endmodule

// Um Shift Register desloca os bits de entrada para a direita ou esquerda.