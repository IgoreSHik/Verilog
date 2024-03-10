module delay(
	input clk,
	output q);
	
	parameter M = 50000000;
	parameter N = clogb2(M-1);
	
	function integer clogb2(input [31:0] v);
		for (clogb2 = 0; v > 0; clogb2 = clogb2 +1)
			v = v >> 1;
	endfunction	
	
	wire [N-1:0] A;
	wire e;
	
	counter_mod_M #(M) ex0(1, clk, 1, A);
	assign e = ~|A;
	
	counter_mod_M #(2) ex1(e, clk, 1, q);
	
endmodule
