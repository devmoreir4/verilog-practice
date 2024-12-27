module CodificadorGray (tecla, codigo);

	input [3:0] tecla;
	
	output reg [3:0] codigo;
	
	always@* begin
	
		case(tecla)
		
			4'b0000: codigo <= 4'b0000;
			4'b0001: codigo <= 4'b0001;
			4'b0010: codigo <= 4'b0011;
			4'b0011: codigo <= 4'b0010;
			4'b0100: codigo <= 4'b0110;
			4'b0101: codigo <= 4'b0111;
			4'b0110: codigo <= 4'b0101;
			4'b0111: codigo <= 4'b0100;
			4'b1000: codigo <= 4'b1100;
			4'b1001: codigo <= 4'b1101;
			4'b1010: codigo <= 4'b1111;
			4'b1011: codigo <= 4'b1110;
			4'b1100: codigo <= 4'b1010;
			4'b1101: codigo <= 4'b1011;
			4'b1110: codigo <= 4'b1001;
			4'b1111: codigo <= 4'b1000;
		
		endcase
	
	end

endmodule 