module sub_8_bit(
  input [7:0] a, b,
  input cin,
  output [7:0] sub,
  output cout
  );
  
  wire [6:0] c;
  
  sub_1_bit s1( a[0], b[0], cin , sub[0], c[0]);
  sub_1_bit s2( a[1], b[1], c[0], sub[1], c[1]);
  sub_1_bit s3( a[2], b[2], c[1], sub[2], c[2]);
  sub_1_bit s4( a[3], b[3], c[2], sub[3], c[3]);
  sub_1_bit s5( a[4], b[4], c[3], sub[4], c[4]);
  sub_1_bit s6( a[5], b[5], c[4], sub[5], c[5]);
  sub_1_bit s7( a[6], b[6], c[5], sub[6], c[6]);
  sub_1_bit s8( a[7], b[7], c[6], sub[7], cout);
  
  
  
endmodule
