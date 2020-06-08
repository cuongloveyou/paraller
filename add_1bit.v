module add_1bit(
  input a,b, cin,
  output s,co
  );
	wire out1, out2, out3, out4, out5;
  
	half_add_1bit ha1(a, b, out1, out2);
	half_add_1bit ha2(cin, out1, s, out3);
	assign {out4, out5} = out2+out3;
	assign co = out4+out5;
	
endmodule
