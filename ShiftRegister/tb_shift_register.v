`timescale 1ns / 1ps

module tb_shift_register;

    reg Clk;              // Clock (gerado no testbench)
    reg Reset;            // Reset (gerado no testbench)
    reg ShiftIn;          // Entrada para o shift register
    wire [3:0] Q;         // Saída do shift register

    shift_register uut (
        .Clk(Clk),
        .Reset(Reset),
        .ShiftIn(ShiftIn),
        .Q(Q)
    );

    always begin
        #5 Clk = ~Clk;  // Clock com período de 10 ns (frequência de 100 MHz)
    end

    initial begin
        Clk = 0;
        Reset = 0;
        ShiftIn = 0;

        // Teste 1: Reset
        $display("Iniciando Teste 1: Reset");
        Reset = 1;  // Ativa o reset
        #10;         // Espera por 10 ns
        Reset = 0;   // Desativa o reset
        #10;

        // Teste 2: Alimenta ShiftIn com valores diferentes
        $display("Iniciando Teste 2: Alimentando ShiftIn");
        ShiftIn = 1;  // Alinha 1 no shift register
        #10;          // Espera 10 ns
        ShiftIn = 0;  // Agora alinha 0
        #10;          // Espera 10 ns
        ShiftIn = 1;  // Alinha 1
        #10;          // Espera 10 ns
        ShiftIn = 0;  // Alinha 0
        #10;

        // Teste 3: Testa várias iterações de shift
        $display("Iniciando Teste 3: Vários Shifts");
        ShiftIn = 1;
        #10;
        ShiftIn = 0;
        #10;
        ShiftIn = 1;
        #10;
        ShiftIn = 1;
        #10;

        // Teste 4: Testa o reset novamente
        $display("Iniciando Teste 4: Reset após alguns shifts");
        Reset = 1;  // Ativa o reset
        #10;         // Espera 10 ns
        Reset = 0;   // Desativa o reset
        #10;

        $finish;
    end

    initial begin
        $monitor("Tempo = %t | ShiftIn = %b | Q = %b", $time, ShiftIn, Q);
    end
endmodule
