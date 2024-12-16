module mux2x1_tb;

    // Declarar os sinais de entrada e saída
    reg [7:0] A, B;   // Entradas A e B (8 bits)
    reg Es;            // Sinal de controle de seleção
    wire [7:0] Y;      // Saída Y (8 bits)

    // Instanciar o módulo MUX2x1
    mux2x1 uut (
        .A(A),
        .B(B),
        .Es(Es),
        .Y(Y)
    );

    // Bloco inicial para gerar estímulos e monitorar a saída
    initial begin
        // Inicializa as entradas
        A = 8'b00000000; B = 8'b11111111; Es = 0;  // Caso inicial
        $monitor("A = %b, B = %b, Es = %b, Y = %b", A, B, Es, Y);

        // Testar o comportamento com Es = 0
        #10 A = 8'b00001111; B = 8'b11110000; Es = 0; // Quando Es = 0, Y deve ser igual a A
        #10 A = 8'b10101010; B = 8'b01010101; Es = 0; // Quando Es = 0, Y deve ser igual a A

        // Testar o comportamento com Es = 1
        #10 A = 8'b00001111; B = 8'b11110000; Es = 1; // Quando Es = 1, Y deve ser igual a B
        #10 A = 8'b10101010; B = 8'b01010101; Es = 1; // Quando Es = 1, Y deve ser igual a B

        // Testar com diferentes valores de A e B
        #10 A = 8'b11110000; B = 8'b00001111; Es = 0; // Quando Es = 0, Y deve ser igual a A
        #10 A = 8'b01010101; B = 8'b10101010; Es = 1; // Quando Es = 1, Y deve ser igual a B

        // Finalizar a simulação
        #10 $finish;
    end

endmodule