module adder_subtractor (
    input [7:0] a,
    input [7:0] b,
    input ctrl,          // Controle (0 para soma, 1 para subtração)
    output [7:0] result,
    output cout          // Carry-out ou borrow
);
    wire [7:0] b_xor_ctrl;  // Segundo operando com controle para subtração

    assign b_xor_ctrl = b ^ {8{ctrl}};

    full_adder_8bit adder (
        .a(a),
        .b(b_xor_ctrl),
        .cin(ctrl),       // Carry-in (para subtração)
        .sum(result),
        .cout(cout)      // Carry-out ou borrow
    );
endmodule
