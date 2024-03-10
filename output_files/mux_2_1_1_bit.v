module mux_2_1_1_bit(
	input x, y, s,
	output m);
	
	assign m = (~s & x) | (s & y);
	
endmodule
