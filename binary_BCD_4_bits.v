module binary_BCD_4_bits (
	input [3:0] x,
	output [0:6] h0,
	output [0:6] h1); 
	
	reg [0:6] a;
	reg [0:6] b;
	
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
			
			4'b1010: a = 7'b0000001;
			4'b1011: a = 7'b1001111;
			4'b1100: a = 7'b0010010;
			4'b1101: a = 7'b0000110;
			4'b1110: a = 7'b1001100;
			4'b1111: a = 7'b0100100;
		endcase
		if (x >= 4'b1010) begin
			b = 7'b1001111;
		end
		else begin
			b = 7'b0000001;
		end
	end
	
	assign h0 = a;
	assign h1 = b;
	
endmodule
