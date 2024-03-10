module decoder_7_seg (
	input [1:0] c,
	output [0:6] h);
	
	reg [0:6] a;
	
	always @ (c) begin
		case(c)
			2'b00: a = 7'b1001000;
			2'b01: a = 7'b0000000;
			2'b10: a = 7'b1111001;
			2'b11: a = 7'b0000000;
		endcase
	end
	
	assign h = a;
	
endmodule
