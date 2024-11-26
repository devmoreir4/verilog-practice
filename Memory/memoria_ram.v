module MemoriaRAM(clk, A, WD, WE, RD); // clock

	input clk, WE;
	input[7:0] A, WD;
	output[7:0] RD;
	
	reg[0:7] dados[0:255];
	
	assign RD = dados[A];
	
	integer i;
	
	initial begin
		for(i=0; i<256; i=i+1) begin
			dados[i] = 0;
		end
	end
	
	always@(posedge clk) begin
		if(clk == 1) begin
			if(WE == 1) begin
				dados[A] = WD;
			end
		end
	end

endmodule
