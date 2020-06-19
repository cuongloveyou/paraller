module add_5_reg_8bit(
  input [7:0] in1, in2, in3, in4, in5,
  output [11:0] out
  );
  wire [11:0] tmp1, tmp2, tmp3, tmp4;
  //assign out = in1 + in2 + in3 + in4 + in5;
  
  add_12_bit a1({4'b0, in1}, {4'b0, in2}, tmp1);
  add_12_bit a2({4'b0, in3}, {4'b0, in4}, tmp2);
  add_12_bit a3(tmp1, tmp2, tmp3);
  add_12_bit a4({4'b0, in5}, tmp3, out);
  
endmodule
