module sas(
  input [7:0] a, b,
  output [15:0] out_sas
  );
  parameter _1b0 = 1'b0;
  parameter _8b1 = 8'b11111111;
  wire [7:0] d1, d2, d3;
  wire  o1, o3;
  sub_8_bit s8b1(a, b, _1b0, d1, o1);
  abs a1(d1, o1, d2);
  sub_8_bit s8b2(_8b1, d2, 1'b0, d3, o3);
  
  assign out_sas = {a,d3};
  
endmodule
