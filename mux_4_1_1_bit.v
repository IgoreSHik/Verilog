module mux_4_1_1_bit (
	input u, v, w, x, s0, s1,
	output m);
	
	wire m0out, m1out;
	
	mux_2_1_1_bit m0(u, v, s0, m0out);
	mux_2_1_1_bit m1(w, x, s0, m1out);
	
	mux_2_1_1_bit m2(m0out, m1out, s1, m);
	
endmodule
	