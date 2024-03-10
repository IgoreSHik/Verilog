module counter_BCD_3_digits(
	input clk, areset, enable,
	output maxed,
	output reg [3:0] d0,
	output reg [3:0] d1,
	output reg [3:0] d2);
		
	// 50000000 == 1s
	parameter N = 50;
	
	wire modEnable;
	wire ro;
	delay #(N) d(clk, modEnable); 
	
	always @(posedge modEnable, posedge areset) begin
		if (areset) begin
			d0 <= 0;
			d1 <= 0;
			d2 <= 0;
		end
		else if (enable) begin
			if (d0 == 9) begin
				d0 <= 0;
				if (d1 == 9) begin
					d1 <= 0;
					if (d2 == 9) begin
						d2 <= 0;
					end
					else
						d2 <= d2 + 1;
				end
				else				
					d1 <= d1 + 1;					
			end
			else
				d0 <= d0 + 1;
		end
	end
	
	reg max;
	always @(*)
		if (d0 == 9 && d1 == 9 && d2 == 9) max = 1;
		else max = 0;
		
	assign maxed = max;
	
endmodule
