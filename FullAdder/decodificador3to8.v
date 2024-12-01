module decodificador3to8 (
    input wire [2:0] in,
    output reg [7:0] out
);
    always @(*) begin
        out = 8'b00000000;
        out[in] = 1'b1; // Define o bit correspondente como 1.
    end
endmodule


// decodificador que converte uma entrada de 3 bits em uma saída de 8 bits.