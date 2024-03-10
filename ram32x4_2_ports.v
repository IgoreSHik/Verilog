module ram32x4_3(
	input [4:0] address,
	input clk,
	input [3:0] data,
	input wren,
	output [3:0] q);

	reg [3:0] memory_array[31:0];
	
	reg [4:0] reg_address;
	reg [3:0] reg_data;
	reg reg_write;
	
	always @(posedge clk) begin
		reg_address <= address;
		reg_data <= data;
		reg_write <= wren;
	end
	
	always @(*) begin
		if (reg_write)
			memory_array[address] = data;		
	end
	
	assign q = memory_array[address]; 

endmodule
