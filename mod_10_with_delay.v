module mod_10_with_delay (
	input clk,
	output [qL-1:0] Q);
	
	parameter M = 11;
	parameter N = 50;
	
	localparam qL = clogb2(M - 1);
	localparam qaL = clogb2(N - 1);
	
	function integer clogb2(input [31:0] v);
		for (clogb2 = 0; v > 0; clogb2 = clogb2 +1)
			v = v >> 1;
	endfunction
		
	wire [qaL-1:0] Qa;
	counter_mod_M #(N) c0(1, clk, 1, Qa);	
	
	wire modEnable = ~|Qa /* synthesis keep */;
	
	counter_mod_M #(M) c1(modEnable, clk, 1, Q);
	
endmodule
