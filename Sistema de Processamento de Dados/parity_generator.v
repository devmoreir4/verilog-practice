module parity_generator(
	input wire [7:0] data_in, // dados de 8 bits
	output reg parity_bit // bit de paridade par
);
	always @(*) begin
		parity_bit = ^data_in; // XOR para calcular a paridade
	end
endmodule
