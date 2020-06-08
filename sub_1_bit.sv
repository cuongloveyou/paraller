module sub_1_bit(
  input a, b, cin,
  output sub, cout,
  wire d1, b1, b2
  );
  //wire out_xor1, out_xor2, out_and1, out_and2, out_or1, out_not1, out_not2;
  /*
  xor x1(out_xor1, a, b);
  not n1(out_not1, a);
  and a1(out_and1, out_not1, b);
  xor x2(out_xor2, out_xor1, ci);
  not n2(out_not2, ci);
  and a2(out_and2, out_not1, out_not2);
  or o1(out_or1, out_and1, out_and2);
  */
  
  half_sub_1_bit hs1(a, b, d1, b1);
  half_sub_1_bit hs2(d1, cin, sub, b2);
  or o1(cout, b1, b2);
  
  
endmodule
  
  
  
