module d_flip_flop (
    input wire D,        // Entrada
    input wire Clk,      // Clock
    output reg Q         // Saída
);
    always @(posedge Clk) begin
        Q <= D;          // Atualiza a saída na borda de subida
    end
endmodule

// Um Flip-Flop tipo D armazena um bit e altera seu estado na borda do clock.