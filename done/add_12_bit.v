module add_12_bit(
  input [11:0] in1, in2,
  output [11:0] s
  );
  
  wire [11:0] c;
  
  add_1_bit a1 (in1[0] , in2[0] , 1'b0,  s[0] , c[0] );
  add_1_bit a2 (in1[1] , in2[1] , c[0],  s[1] , c[1] );
  add_1_bit a3 (in1[2] , in2[2] , c[1],  s[2] , c[2] );
  add_1_bit a4 (in1[3] , in2[3] , c[2],  s[3] , c[3] );
  add_1_bit a5 (in1[4] , in2[4] , c[3],  s[4] , c[4] );
  add_1_bit a6 (in1[5] , in2[5] , c[4],  s[5] , c[5] );
  add_1_bit a7 (in1[6] , in2[6] , c[5],  s[6] , c[6] );
  add_1_bit a8 (in1[7] , in2[7] , c[6],  s[7] , c[7] );
  add_1_bit a9 (in1[8] , in2[8] , c[7],  s[8] , c[8] );
  add_1_bit a10(in1[9] , in2[9] , c[8],  s[9] , c[9] );
  add_1_bit a11(in1[10], in2[10], c[9],  s[10], c[10]);
  add_1_bit a12(in1[11], in2[11], c[10], s[11], c[11]);
  
endmodule
  
