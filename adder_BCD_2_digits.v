module adder_BCD_2_digits(
	input [3:0] x,
	input [3:0] y,
	input cin,
	output [3:0] s0,
	output [3:0] s1,
	output error);
	
	reg e;
	
	wire [3:0] s;	
	wire cout;
	wire cout2;
	wire calculated_cout;
		
	adder_4 a0(cin, x, y, s, cout);	
	assign calculated_cout = cout | s[3] & s[2] | s[3] & s[1];	
	adder_4 a1(0, s, {1'b0, calculated_cout, calculated_cout, 1'b0}, s0, cout2);
	
	always @ (*) begin
		if (x > 9 | y > 9) begin
			e = 1;
		end else begin
			e = 0;
		end
	end
		
	assign error = e;
	assign s1 = {3'b000, calculated_cout}; 
	
endmodule
