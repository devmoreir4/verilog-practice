module DriverTeclado (linha, coluna, tecla);

	input [3:0] linha, coluna;
	
	output reg [3:0] tecla;
	
	reg[7:0] codigo;
	
	
	always@* begin
	
		codigo <= {linha, coluna};
		
		case(codigo)
		
			8'b00000000: tecla <= 0;
			8'b00000001: tecla <= 1;
			8'b00000010: tecla <= 2;
			8'b00000011: tecla <= 3;
			
			8'b00010000: tecla <= 4;
			8'b00010001: tecla <= 5;
			8'b00010010: tecla <= 6;
			8'b00010011: tecla <= 7;
			
			8'b00100000: tecla <= 8;
			8'b00100001: tecla <= 9;
			8'b00100010: tecla <= 10;
			8'b00100011: tecla <= 11;
			
			8'b00110000: tecla <= 12;
			8'b00110001: tecla <= 13;
			8'b00110010: tecla <= 14;
			8'b00110011: tecla <= 15;
		
		endcase
	
	end

endmodule 