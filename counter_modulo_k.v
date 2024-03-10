module counter_modulo_k(
	input clk, aclr, enable,
	output rollover, 
	output reg [N-1:0] q
);
	
	parameter k = 20;
	localparam N = clogb2(k - 1);

	function integer clogb2(input [31:0] v);
		for (clogb2 = 0; v > 0; clogb2 = clogb2 +1)
			v = v >> 1;
	endfunction	
	
	reg ro = 0;
	always @(posedge clk, posedge aclr) begin
		if (aclr) begin
			q <= {N{1'b0}};
			ro = 0;
		end
		else if (q == k - 1) begin
			q <= {N{1'b0}};
			ro = 1;
		end
		else if (enable) begin
			q <= q + 1;
			ro = 0;
		end
		else begin
			q <= q;
			ro = 0;
		end
	end
	
	assign rollover = ro;	

endmodule
