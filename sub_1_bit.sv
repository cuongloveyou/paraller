module sub_1_bit(
  input in1, in2, cin,
  output sub, cout
  );
  
  wire out1, out2, out3, out4, out5;
  
  half_sub_1_bit hs1( in1, in2, out1, out2);
  half_sub_1_bit hs2( out1, cin, sub, out3);
  assign {out4, out5} = out2+out3;
  assign cout = out2+out3;
     
  
endmodule
  
