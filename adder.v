module adder (
 input cin, a, b,
 output s, cout
);

 assign {cout, s} = a + b + cin;

endmodule
