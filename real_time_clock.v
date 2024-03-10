module real_time_clock(
	input clk, aclr,
	output [3:0] ml,
	output [3:0] mh,
	output [3:0] sl,
	output [3:0] sh,
	output [3:0] msl,
	output [3:0] msh);

	wire msClk;
	delay_10ms d(clk, msClk);
	
	wire msRo, msRo99;
	counter_modulo_k #(10) cms0(msClk, aclr, 1, msRo, msl);
	counter_modulo_k #(10) cms1(msRo, aclr, 1, msRo99, msh);
	
	wire sRo, sRo60;
	counter_modulo_k #(10) cs0(msRo99, aclr, 1, sRo, sl);
	counter_modulo_k #(6) cs1(sRo, aclr, 1, sRo60, sh);
	
	wire mRo, mRo60;
	counter_modulo_k #(10) cm0(sRo60, aclr, 1, mRo, ml);
	counter_modulo_k #(6) cm1(mRo, aclr, 1, mRo60, mh);
	
endmodule
