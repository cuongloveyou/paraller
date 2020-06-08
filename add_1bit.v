module add_1bit(
  input a,b,ci,
	output s,co
  );
  
	assign {co,s} = a + b + ci;
	
endmodule
