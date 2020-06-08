
module abs(
  input [7:0] sub,
  input cin,
  output [7:0] abs_sub
  );
  wire a;
  wire [7:0] result;
  
 sub_8_bit s8_1(8'b11111111, sub, 1'b0, result, a);
 assign abs_sub = (cin == 1)? (result+1'b1) : sub;
 
  
  endmodule
