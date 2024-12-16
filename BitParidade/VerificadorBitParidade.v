module VerificadorBitParidade (E, P, T);
    input [7:0] E;
    input P;
    output reg T;
    reg ePar;

    always @* 
    begin
        ePar = ^E;
        T = (P == ePar);
    end
endmodule
