module ram32x4_2_port_map(
	input CLOCK2_50,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [0:6] HEX2,
	output [0:6] HEX3,
	output [0:6] HEX4,
	output [0:6] HEX5
);
		
	wire q; 
	reg [4:0] addr;
	// 1s
	delay #(50000000) d(CLOCK2_50, q);
	always @(posedge q) begin
		addr <= addr + 1;
	end

	wire [3:0] out_data /* synthesis keep */;
	ram32x4_2_port ram(CLOCK2_50, 0, addr, 0, 0, out_data);
	
	decoder_hex_16 h0(out_data, HEX0);
	decoder_hex_16 h1(0, HEX1);
	
	decoder_hex_16 h2(addr[3:0], HEX2);
	decoder_hex_16 h3(addr[4], HEX3);
	
	decoder_hex_16 h4(0, HEX4);
	decoder_hex_16(0, HEX5);
	
endmodule
