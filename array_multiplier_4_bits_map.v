module array_multiplier_4_bits_map(
	input [7:0] SW,
	output [0:6] HEX0,
	output [0:6] HEX2,
	output [0:6] HEX4,
	output [0:6] HEX5
);
	
	wire [7:0] out;
	array_multiplier_4_bits am(SW[7:4], SW[3:0], out);
	
	decoder_hex_16 d0(SW[7:4], HEX0);
	decoder_hex_16 d1(SW[3:0], HEX2);
	display_2hex_alt d2(out, HEX4, HEX5);

endmodule
