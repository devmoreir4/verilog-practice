module decoder_3to8 (
    input wire [2:0] A,   // Entradas (3 bits)
    output reg [7:0] Y    // Saídas (8 linhas)
);
    always @(*) begin
        Y = 8'b00000000;
        Y[A] = 1;        // Ativa a saída correspondente
    end
endmodule

// Um Decodificador ativa uma saída correspondente a uma combinação de entrada binária.
