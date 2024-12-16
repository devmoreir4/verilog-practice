module GeradorBitParidade (E, P);
    input [7:0] E;
    output reg P;

    always @* 
    begin
        P <= ^E;
    end
endmodule
