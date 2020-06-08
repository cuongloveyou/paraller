module half_sub_1_bit(
  input in1, in2,
  output reg sub, out
  );
  
  assign sub = in1+in2;
  assign out = ~in1*in2;
  
endmodule
