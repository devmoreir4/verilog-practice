module mux2x1 (A, B, Es, Y);
    // Declara as entradas de 8 bits A e B, e o bit de seleção Es
    input [7:0] A, B;
    input Es;
    
    // Declara a saída de 8 bits Y
    output reg [7:0] Y;
    
    // Seleção de A ou B com base em Es
    always @(*) begin
        case (Es)
            1'b0: Y = A;  // Se Es = 0, seleciona A
            1'b1: Y = B;  // Se Es = 1, seleciona B
            default: Y = 8'b00000000;  // Valor padrão (não utilizado)
        endcase
    end
endmodule