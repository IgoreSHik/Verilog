module mod_10_clock(
	input CLOCK_50,
	output [0:6] HEX0);
	
	wire [3:0] q;
	wire e;
	mod_10_with_delay #(10, 50000000) mod(CLOCK_50, q);
	
	decoder_hex_10 dec(q, HEX0, e);
	
endmodule
