module counter_BCD_3_digits_map(
	input CLOCK_50, KEY1, KEY2,
	output LEDR0,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [0:6] HEX2);

	wire [3:0] d0;
	wire [3:0] d1;
	wire [3:0] d2;
	counter_BCD_3_digits #(50000000) cnt(CLOCK_50, ~KEY1, ~KEY2, LEDR0, d0, d1, d2);
	
	wire e;
	decoder_hex_10 h0(d0, HEX0, e);
	decoder_hex_10 h1(d1, HEX1, e);
	decoder_hex_10 h2(d2, HEX2, e);
	
endmodule
