`timescale 1ns / 1ps  // Define a unidade de tempo e a precisão

module demux1x2_tb;  // Nome do testbench

    // Declaração de sinais para conectar ao módulo testado
    reg Y;       // Entrada de dado
    reg Es;      // Sinal de controle
    wire A, B;   // Saídas do módulo

    // Instancia o módulo sob teste (UUT - Unit Under Test)
    demux1x2 uut (
        .Y(Y), 
        .Es(Es), 
        .A(A), 
        .B(B)
    );

    // Processo inicial para aplicar estímulos
    initial begin
        // Exibe cabeçalho no simulador
        $display("Tempo\tY\tEs\tA\tB");
        $monitor("%0dns\t%b\t%b\t%b\t%b", $time, Y, Es, A, B);

        // Estímulos de teste
        Y = 0; Es = 0; #10;  // Teste com Y = 0, Es = 0
        Y = 1; Es = 0; #10;  // Teste com Y = 1, Es = 0
        Y = 1; Es = 1; #10;  // Teste com Y = 1, Es = 1
        Y = 0; Es = 1; #10;  // Teste com Y = 0, Es = 1

        // Fim do teste
        $stop;
    end

endmodule
