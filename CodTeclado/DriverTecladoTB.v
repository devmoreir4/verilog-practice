`timescale 1ps/1ps

module DriverTecladoTB();

	reg [3:0] linha, coluna;
	
	wire [3:0] tecla;
	
	DriverTeclado driver(linha, coluna, tecla);
	
	initial begin
		
		linha <= 4'b0000;
		coluna <= 4'b0000;
		
		#50;
		
		linha <= 4'b0000;
		coluna <= 4'b0001;
		
		#50;
		
		linha <= 4'b0000;
		coluna <= 4'b0010;
		
		#50;
		
		linha <= 4'b0000;
		coluna <= 4'b0011;
		
		#50;
		
		linha <= 4'b0001;
		coluna <= 4'b0000;
		
		#50;
		
		linha <= 4'b0001;
		coluna <= 4'b0001;
		
		#50;
		
		linha <= 4'b0001;
		coluna <= 4'b0010;
		
		#50;
		
		linha <= 4'b0001;
		coluna <= 4'b0011;
		
		#50;
		
		linha <= 4'b0010;
		coluna <= 4'b0000;
		
		#50;
		
		linha <= 4'b0010;
		coluna <= 4'b0001;
		
		#50;
		
		linha <= 4'b0010;
		coluna <= 4'b0010;
		
		#50;
		
		linha <= 4'b0010;
		coluna <= 4'b0011;
		
		#50;
		
		linha <= 4'b0011;
		coluna <= 4'b0000;
		
		#50;
		
		linha <= 4'b0011;
		coluna <= 4'b0001;
		
		#50;
		
		linha <= 4'b0011;
		coluna <= 4'b0010;
		
		#50;
		
		linha <= 4'b0011;
		coluna <= 4'b0011;
		
		#50;
	
	end

endmodule 