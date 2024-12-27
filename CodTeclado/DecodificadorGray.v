module DecodificadorGray(codigo, sete_seg);

	input [3:0] codigo;
	
	output reg [6:0] sete_seg;
	
	always@* begin
	
		case(codigo)
			4'b0000: sete_seg <= 7'b0000110;//1
			4'b0001: sete_seg <= 7'b1011011;//2
			4'b0011: sete_seg <= 7'b1001111;//3
			4'b0010: sete_seg <= 7'b1110111;//A
			4'b0110: sete_seg <= 7'b1100110;//4
			4'b0111: sete_seg <= 7'b1101101;//5
			4'b0101: sete_seg <= 7'b1111101;//6
			4'b0100: sete_seg <= 7'b1111100;//B
			4'b1100: sete_seg <= 7'b0000111;//7
			4'b1101: sete_seg <= 7'b1111111;//8
			4'b1111: sete_seg <= 7'b1100111;//9
			4'b1110: sete_seg <= 7'b1011000;//C
			4'b1010: sete_seg <= 7'b1000110;//*
			4'b1011: sete_seg <= 7'b0111111;//0
			4'b1001: sete_seg <= 7'b1110110;//#
			4'b1000: sete_seg <= 7'b1011110;//D
		endcase
	end

endmodule 