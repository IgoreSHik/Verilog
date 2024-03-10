module master_slave_D(
	input D, Clk,
	output Q);

	wire Qm /* synthesis keep */ ;
	
	latch_D master(D, ~Clk, Qm);
	latch_D slave(Qm, Clk, Q);
	
endmodule
