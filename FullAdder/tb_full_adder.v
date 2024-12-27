`timescale 1ns / 1ps

module tb_full_adder;

    reg a, b, cin;
    wire sum, cout;

    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        a = 0;
        b = 0;
        cin = 0;

        $display("Iniciando Testes para Full Adder");

        $display("Teste 1: a = 0, b = 0, cin = 0");
        #10;

        a = 0; b = 0; cin = 1;
        $display("Teste 2: a = 0, b = 0, cin = 1");
        #10;

        a = 0; b = 1; cin = 0;
        $display("Teste 3: a = 0, b = 1, cin = 0");
        #10;

        a = 0; b = 1; cin = 1;
        $display("Teste 4: a = 0, b = 1, cin = 1");
        #10;

        a = 1; b = 0; cin = 0;
        $display("Teste 5: a = 1, b = 0, cin = 0");
        #10;

        a = 1; b = 0; cin = 1;
        $display("Teste 6: a = 1, b = 0, cin = 1");
        #10;

        a = 1; b = 1; cin = 0;
        $display("Teste 7: a = 1, b = 1, cin = 0");
        #10;
		  
        a = 1; b = 1; cin = 1;
        $display("Teste 8: a = 1, b = 1, cin = 1");
        #10;

        $finish;
    end

    initial begin
        $monitor("Tempo = %t | a = %b | b = %b | cin = %b | sum = %b | cout = %b", $time, a, b, cin, sum, cout);
    end
endmodule
