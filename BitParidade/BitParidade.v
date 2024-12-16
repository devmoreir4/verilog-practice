module BitParidade(
    input [7:0] E,
    output P,
    output T
);
    // Instanciar os módulos subjacentes
    GeradorBitParidade gerador (
        .E(E),
        .P(P)
    );

    VerificadorBitParidade verificador (
        .E(E),
        .P(P),
        .T(T)
    );
endmodule
