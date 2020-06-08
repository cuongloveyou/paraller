module half_add_1bit(
  input a,b,
  output s,co
  );
  	assign s = a + b;
	assign co = a * b ;
	
endmodule
