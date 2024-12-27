module CodificadorGrayTB();

	reg [3:0] tecla;
	
	wire [3:0] codigo;
	
	CodificadorGray codificador(tecla, codigo);
	
	initial begin
	
		tecla <= 4'b0000;
		
		#50;
				
		tecla <= 4'b0001;
		
		#50;
				
		tecla <= 4'b0010;
		
		#50;
		
		tecla <= 4'b0011;
		
		#50;
		
		tecla <= 4'b0100;
		
		#50;
		
		tecla <= 4'b0101;
		
		#50;
		
		tecla <= 4'b0110;
		
		#50;
		
		tecla <= 4'b0111;
		
		#50;
		
		tecla <= 4'b1000;
		
		#50;
		
		tecla <= 4'b1001;
		
		#50;
		
		tecla <= 4'b1010;
		
		#50;
		
		tecla <= 4'b1011;
		
		#50;
		
		tecla <= 4'b1100;
		
		#50;
		
		tecla <= 4'b1101;
		
		#50;
		
		tecla <= 4'b1110;
		
		#50;
		
		tecla <= 4'b1111;
		
		#50;
	end

endmodule 