`timescale 1ns / 1ps

module tb_adder_subtractor;
    reg [7:0] a, b;
    reg ctrl;
    wire [7:0] result;
    wire cout;

    adder_subtractor uut (
        .a(a),
        .b(b),
        .ctrl(ctrl),
        .result(result),
        .cout(cout)
    );

    initial begin
        $display("Iniciando Testes");

        // Teste 1: Soma
        a = 8'b01010101;  // 85
        b = 8'b00110011;  // 51
        ctrl = 0;         // Soma
        #10;
        $display("Teste 1: a = %b, b = %b, soma = %b, cout = %b", a, b, result, cout);

        // Teste 2: Subtração
        a = 8'b01010101;  // 85
        b = 8'b00110011;  // 51
        ctrl = 1;         // Subtração
        #10;
        $display("Teste 2: a = %b, b = %b, subtracao = %b, cout = %b", a, b, result, cout);

        // Teste 3: Soma
        a = 8'b11111111;  // 255
        b = 8'b00000001;  // 1
        ctrl = 0;         // Soma
        #10;
        $display("Teste 3: a = %b, b = %b, soma = %b, cout = %b", a, b, result, cout);

        // Teste 4: Subtração
        a = 8'b00000001;  // 1
        b = 8'b00000010;  // 2
        ctrl = 1;         // Subtração
        #10;
        $display("Teste 4: a = %b, b = %b, subtracao = %b, cout = %b", a, b, result, cout);

        $finish;
    end
endmodule
