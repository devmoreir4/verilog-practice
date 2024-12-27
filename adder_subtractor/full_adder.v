module full_adder (
    input a,       // Primeiro operando
    input b,       // Segundo operando
    input cin,     // Carry-in
    output sum,    // Resultado da soma
    output cout    // Carry-out
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
