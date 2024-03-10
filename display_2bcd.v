module display_2bcd(
	input [7:0] SW,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [9:0] LEDR);

	decoder_hex_10 dec0(SW[3:0], HEX0, LEDR[8]);
	decoder_hex_10 dec1(SW[7:4], HEX1, LEDR[9]);
	assign LEDR[7:0] = SW;
	
endmodule
	