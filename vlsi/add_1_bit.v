module add_1_bit(
  input a, b, cin,
  output s, cout
  );
  
  wire out1, out2, out3, out4, out5;
  
  half_add_1_bit ha1(a, b, out1, out2);
  half_add_1_bit ha2(out1, cin, s, out3);
  assign {out4,out5} = out2+out3;
  assign cout = out4+out5;
  
endmodule
   
