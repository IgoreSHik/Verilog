module diode_delay(
	input clk,
	output d0, d1);
	
	// 0.1s
	wire q0, q1;
	wire ro;
	delay #(5000000) delay0(clk, q0);
	counter_modulo_k #(2) c0(q0, 0, 1, d0, ro);
	
	// 0.5s
	delay #(25000000) delay1(clk, q1);
	counter_modulo_k #(2) c1(q1, 0, 1, d1, ro);
	
endmodule
