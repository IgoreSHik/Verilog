module decoder_hex_10 (
	input [3:0] x,
	output [0:6] h,
	output e); 
	
	reg [0:6] a;
	reg error;
	
	always @ (*) begin
		case(x)
			4'b0000: a = 7'b0000001;
			4'b0001: a = 7'b1001111;
			4'b0010: a = 7'b0010010;
			4'b0011: a = 7'b0000110;
			4'b0100: a = 7'b1001100;
			4'b0101: a = 7'b0100100;
			4'b0110: a = 7'b0100000;
			4'b0111: a = 7'b0001111;
			4'b1000: a = 7'b0000000;
			4'b1001: a = 7'b0000100;
			default: a = 7'b0110000;
		endcase
		if (x >= 4'b1010) begin
			error = 1'b1;
		end
		else begin
			error = 1'b0;
		end
	end
	
	assign h = a;
	assign e = error;
	
endmodule
