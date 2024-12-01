module d_flip_flop (
    input wire d,
    input wire clk,
    output reg q
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule

// Flip-Flop tipo D sensível à borda de subida do clock.