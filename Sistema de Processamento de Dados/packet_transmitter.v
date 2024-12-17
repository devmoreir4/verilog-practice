module packet_transmitter(
	input wire [7:0] data_in,      // Dados do sensor (8 bits)
	input wire [2:0] address,      // Endereço do sensor (3 bits)
	input wire parity_bit,         // Bit de paridade (1 bit)
	output wire [10:0] packet_out  // Pacote completo de 11 bits
);

	// Concatenação explícita das partes do pacote
	assign packet_out = {data_in, parity_bit, address};

endmodule
