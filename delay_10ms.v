module delay_10ms(
	input clk,
	output q);

	delay #(500000) d(clk, q);
	
endmodule
