module display_2hex(
	input [9:0] SW,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [9:0] LEDR);

	decoder_hex_16 dec0(SW[3:0], HEX0);
	decoder_hex_16 dec1(SW[7:4], HEX1);
	assign LEDR = SW;
	
endmodule
	