module counter_4bit (
    input wire Clk,        // Clock
    input wire Reset,      // Reset
    output reg [3:0] Q     // Saída: contador de 4 bits
);
    always @(posedge Clk or posedge Reset) begin
        if (Reset)
            Q <= 4'b0000;  // Reseta o contador
        else
            Q <= Q + 1;    // Incrementa o contador
    end
endmodule

// Um contador incrementa seu valor a cada ciclo de clock.