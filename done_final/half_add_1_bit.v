module half_add_1_bit(
  input a, b,
  output s, cout
  );
  
  assign s = a^b;
  assign cout = a&b;
  
endmodule
