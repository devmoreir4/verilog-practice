module CodTeclado (linha, coluna, sete_seg);
	
	input [3:0] linha, coluna;
	output [6:0] sete_seg;
	
	
	wire [3:0] bar_tecla, bar_cod_gray;
	
	DriverTeclado driver(linha, coluna, bar_tecla);
	
	CodificadorGray codificador(bar_tecla, bar_cod_gray);

	DecodificadorGray decodificador(bar_cod_gray, sete_seg);
	
	
endmodule 