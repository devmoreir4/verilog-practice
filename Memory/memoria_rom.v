module MemoriaROM(E, D); // entrada, dados

    input [7:0] E;
    output [7:0] D;
	 
	 reg [7:0] dados[0:7];
	 
	 assign D = dados[E];
	 
	 integer i;
	 
	 initial begin
		 dados[0]=0;
		 dados[1]=1;
		 dados[2]=2;
		 dados[3]=3;
	end

endmodule
