module adder_4 (
 input cin,
 input wire [3:0] a, b,
 output [3:0] s, output cout);
 wire [2:0] c;
 
 adder sum0(cin, a[0], b[0], s[0], c[0]);
 adder sum1(c[0], a[1], b[1], s[1], c[1]);
 adder sum2(c[1], a[2], b[2], s[2], c[2]);
 adder sum3(c[2], a[3], b[3], s[3], cout);
endmodule
