module half_sub_1_bit(
  input a, b,
  output sub, cout
  );
  
  xor x1(sub, a, b);
 and a1(cout, ~a, b);
  
endmodule
