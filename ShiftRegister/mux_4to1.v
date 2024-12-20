module mux_4to1 (
    input wire [3:0] D,       // Entradas de dados
    input wire [1:0] Sel,     // Sinais de seleção
    output wire Y             // Saída
);
    assign Y = (Sel == 2'b00) ? D[0] :
               (Sel == 2'b01) ? D[1] :
               (Sel == 2'b10) ? D[2] :
                                D[3];
endmodule

// Um Multiplexador é um circuito que seleciona uma entrada entre várias com base em sinais de seleção.