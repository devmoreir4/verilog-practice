module full_adder (
    input wire A, B, Cin,    // Entradas: bits e carry-in
    output wire Sum, Cout    // Saídas: soma e carry-out
);
    assign Sum = A ^ B ^ Cin;  // Soma com XOR
    assign Cout = (A & B) | (B & Cin) | (A & Cin); // Carry com AND e OR
endmodule

// Um Full Adder é uma extensão do Half Adder, capaz de somar três bits: A, B, e um carry-in (Cin).

