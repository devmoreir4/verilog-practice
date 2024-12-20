module demux1x2 (Y, Es , A, B);
    input Y, Es;  // Definição das entradas Y (dado de entrada) e Es (sinal de controle)
    output reg A, B;  // Definição das saídas A e B
    always@(*)  // Sempre que houver alteração em alguma das variáveis usadas no bloco, o bloco é executado
    begin
        case (Es)  // Selecção do caminho a ser seguido de acordo com o valor de Es
            0 : A <= Y;  // Se Es for 0, o sinal Y é enviado para a saída A
            1 : B <= Y;  // Se Es for 1, o sinal Y é enviado para a saída B
        endcase
    end
endmodule