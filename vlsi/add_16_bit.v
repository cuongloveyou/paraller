module add_16_bit(
  input [19:0] in1, in2,
  output [19:0] s
  );
  
  wire [19:0] c;
  
  add_1_bit a1 (in1[0] , in2[0] , 1'b0 , s[0] , c[0] );
  add_1_bit a2 (in1[1] , in2[1] , c[0] , s[1] , c[1] );
  add_1_bit a3 (in1[2] , in2[2] , c[1] , s[2] , c[2] );
  add_1_bit a4 (in1[3] , in2[3] , c[2] , s[3] , c[3] );
  add_1_bit a5 (in1[4] , in2[4] , c[3] , s[4] , c[4] );
  add_1_bit a6 (in1[5] , in2[5] , c[4] , s[5] , c[5] );
  add_1_bit a7 (in1[6] , in2[6] , c[5] , s[6] , c[6] );
  add_1_bit a8 (in1[7] , in2[7] , c[6] , s[7] , c[7] );
  add_1_bit a9 (in1[8] , in2[8] , c[7] , s[8] , c[8] );
  add_1_bit a10(in1[9] , in2[9] , c[8] , s[9] , c[9] );
  add_1_bit a11(in1[10], in2[10], c[9] , s[10], c[10]);
  add_1_bit a12(in1[11], in2[11], c[10], s[11], c[11]);
  add_1_bit a13(in1[12], in2[12], c[11], s[12], c[12]);
  add_1_bit a14(in1[13], in2[13], c[12], s[13], c[13]);
  add_1_bit a15(in1[14], in2[14], c[13], s[14], c[14]);
  add_1_bit a16(in1[15], in2[15], c[14], s[15], c[15]);
  
  add_1_bit a17(in1[16], in2[16], c[15], s[16], c[16]);
  add_1_bit a18(in1[17], in2[17], c[16], s[17], c[17]);
  add_1_bit a19(in1[18], in2[18], c[17], s[18], c[18]);
  add_1_bit a20(in1[19], in2[19], c[18], s[19], c[19]);
  
endmodule
