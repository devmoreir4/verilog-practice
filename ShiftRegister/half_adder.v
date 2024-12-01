module half_adder (
    input wire A,      // Primeira entrada
    input wire B,      // Segunda entrada
    output wire S,     // Saída da soma
    output wire C      // Saída do carry-out
);
    // Implementação das portas lógicas
    assign S = A ^ B;  // Soma: XOR
    assign C = A & B;  // Carry: AND
endmodule
