module display_2hex_alt(
	input [7:0] in,
	output [0:6] hex0,
	output [0:6] hex1);

	decoder_hex_16 dec0(in[3:0], hex0);
	decoder_hex_16 dec1(in[7:4], hex1);
	
endmodule
	