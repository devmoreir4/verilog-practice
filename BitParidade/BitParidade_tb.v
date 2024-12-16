`timescale 1ns / 1ps

module BitParidade_tb;
    reg [7:0] E_tb;  // Vetor de estímulos para E
    wire P_tb;       // Bit de paridade gerado
    wire T_tb;       // Resultado da verificação de paridade

    BitParidade uut (
        .E(E_tb),
        .P(P_tb),
        .T(T_tb)
    );

    initial begin
        E_tb = 8'b00000000; #10;  // Teste 1
        E_tb = 8'b11110000; #10;  // Teste 2
        E_tb = 8'b10101010; #10;  // Teste 3
        E_tb = 8'b11111111; #10;  // Teste 4
        $stop;                    // Finaliza a simulação
    end
endmodule
