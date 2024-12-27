module CodTecladoTB();

	reg [3:0] linha, coluna;
	
	wire [6:0] sete_seg;

	wire [3:0] out_tecla, out_cod_gray;
	
	CodTeclado cod_teclado(linha, coluna, sete_seg, out_tecla, out_cod_gray);
	
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
	
	end

endmodule 