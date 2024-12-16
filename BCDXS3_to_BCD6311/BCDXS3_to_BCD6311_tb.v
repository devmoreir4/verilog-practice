`timescale 1ns / 1ps

module BCDXS3_to_BCD6311_tb;
    reg [3:0] bcd_xs3_tb;        // Entrada simulada
    wire [3:0] bcd_6311_tb;      // Saída monitorada

    BCDXS3_to_BCD6311 uut (
        .bcd_xs3(bcd_xs3_tb),    // Conexão da entrada
        .bcd_6311(bcd_6311_tb)   // Conexão da saída
    );

    initial begin
        $display("Time\tXS3\tBCD6311");
        $monitor("%0d\t%b\t%b", $time, bcd_xs3_tb, bcd_6311_tb);
        
        bcd_xs3_tb = 4'b0011; #10; // XS-3: 0 -> BCD6311: 0
        bcd_xs3_tb = 4'b0100; #10; // XS-3: 1 -> BCD6311: 1
        bcd_xs3_tb = 4'b0101; #10; // XS-3: 2 -> BCD6311: 2
        bcd_xs3_tb = 4'b0110; #10; // XS-3: 3 -> BCD6311: 3
        bcd_xs3_tb = 4'b0111; #10; // XS-3: 4 -> BCD6311: 4
        bcd_xs3_tb = 4'b1000; #10; // XS-3: 5 -> BCD6311: 5
        bcd_xs3_tb = 4'b1001; #10; // XS-3: 6 -> BCD6311: 6
        bcd_xs3_tb = 4'b1010; #10; // XS-3: 7 -> BCD6311: 7
        bcd_xs3_tb = 4'b1011; #10; // XS-3: 8 -> BCD6311: 8
        bcd_xs3_tb = 4'b1100; #10; // XS-3: 9 -> BCD6311: 9
        bcd_xs3_tb = 4'b0000; #10; // Caso inválido -> BCD6311: 0
        
        $stop;
    end
endmodule
