module sensor_system(
	input [7:0] sensor_data0, sensor_data1, sensor_data2, sensor_data3, sensor_data4, sensor_data5, sensor_data6, sensor_data7,  // Dados dos sensores
   input clk,                       // Clock para sequenciamento
   output [10:0] packet_out,        // Pacote transmitido (11 bits)
   output [7:0] sensor_out0,        // Dados distribuídos pelo DEMUX para sensor 0
   output [7:0] sensor_out1,        // Dados distribuídos pelo DEMUX para sensor 1
   output [7:0] sensor_out2,        // Dados distribuídos pelo DEMUX para sensor 2
   output [7:0] sensor_out3,        // Dados distribuídos pelo DEMUX para sensor 3
   output [7:0] sensor_out4,        // Dados distribuídos pelo DEMUX para sensor 4
   output [7:0] sensor_out5,        // Dados distribuídos pelo DEMUX para sensor 5
   output [7:0] sensor_out6,        // Dados distribuídos pelo DEMUX para sensor 6
   output [7:0] sensor_out7,        // Dados distribuídos pelo DEMUX para sensor 7
   output error                     // Sinaliza erro de paridade
);

   // Sinais internos
	wire [2:0] address;   // Endereço sequencial dos sensores
   wire [7:0] mux_out;    // Dados selecionados pelo MUX
   wire parity_bit;       // Bit de paridade calculado

   // Contador para gerar o endereço sequencial de 3 bits
   reg [2:0] address_counter = 3'b000;
   always @(posedge clk) begin
		address_counter <= address_counter + 1; // Incrementa o endereço
   end
     
   assign address = address_counter; // Endereço atual é a saída do contador
     
   // Instanciando os módulos
   mux_8to1 mux (
		.sensor_data0(sensor_data0),
      .sensor_data1(sensor_data1),
      .sensor_data2(sensor_data2),
      .sensor_data3(sensor_data3),
      .sensor_data4(sensor_data4),
      .sensor_data5(sensor_data5),
      .sensor_data6(sensor_data6),
      .sensor_data7(sensor_data7),
      .address(address),
      .mux_out(mux_out)
   );

    
   parity_generator parity_gen (
		.data_in(mux_out),
		.parity_bit(parity_bit)
   );
     
   packet_transmitter pkt_tx (
		.data_in(mux_out),
      .address(address),
      .parity_bit(parity_bit),
      .packet_out(packet_out)
   );
     
   demux_1to8 demux (
		.data_in(packet_out[10:3]), // Dados do pacote transmitido
      .address(packet_out[2:0]),  // Endereço do pacote transmitido
      .sensor_out0(sensor_out0),
      .sensor_out1(sensor_out1),
      .sensor_out2(sensor_out2),
      .sensor_out3(sensor_out3),
      .sensor_out4(sensor_out4),
      .sensor_out5(sensor_out5),
      .sensor_out6(sensor_out6),
      .sensor_out7(sensor_out7)
   );
     
   parity_checker parity_chk (
		.data_in(packet_out[10:3]),    // Dados do pacote transmitido
      .parity_bit(packet_out[3]),    // Bit de paridade do pacote transmitido
      .error(error)                  // Saída de erro
    );
     
endmodule
