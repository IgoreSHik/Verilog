module proc_with_ROM(
	input reset, mclk, pclk, run,
	output done,
	output [8:0] bus);
	
	wire [4:0] addr;
	wire [8:0] data;
	counter_mod_M #(32) counter(1, mclk, reset, addr);
	proc_ROM rom(addr, mclk, data);
	
	proc p(data, reset, pclk, run, done, bus);
	
endmodule
