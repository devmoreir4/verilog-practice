module BCDXS3_to_BCD6311 (
    input [3:0] bcd_xs3,  // Entrada em BCDXS3 (4 bits)
    output reg [3:0] bcd_6311 // Saída em BCD6311 (4 bits)
);

always @(*) begin
    case (bcd_xs3)
        4'b0011: bcd_6311 = 4'b0000; // XS-3: 0 -> BCD6311: 0
        4'b0100: bcd_6311 = 4'b0001; // XS-3: 1 -> BCD6311: 1
        4'b0101: bcd_6311 = 4'b0010; // XS-3: 2 -> BCD6311: 2
        4'b0110: bcd_6311 = 4'b0011; // XS-3: 3 -> BCD6311: 3
        4'b0111: bcd_6311 = 4'b0100; // XS-3: 4 -> BCD6311: 4
        4'b1000: bcd_6311 = 4'b0101; // XS-3: 5 -> BCD6311: 5
        4'b1001: bcd_6311 = 4'b0110; // XS-3: 6 -> BCD6311: 6
        4'b1010: bcd_6311 = 4'b0111; // XS-3: 7 -> BCD6311: 7
        4'b1011: bcd_6311 = 4'b1000; // XS-3: 8 -> BCD6311: 8
        4'b1100: bcd_6311 = 4'b1001; // XS-3: 9 -> BCD6311: 9
        default: bcd_6311 = 4'b0000; // Valor inválido
    endcase
end

endmodule