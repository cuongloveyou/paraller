module sas(
  input [7:0] a, b,
  output [15:0] out_sas
  );
  wire [7:0] d1, d2, o1, o2, d3, o3;
  sub_8_bit s8b1(.a(a), .b(b), .cin(1'b0), .sub(d1), .out(o1));
  abs a1(.sub(d1), .cin(o1), .abs_sub(d2));
  sub_8_bit s8b2(.a(8'b11111111), .b(d2), .cin(1'b0), .sub(d3), .out(o3));
  
  assign out_sas = {a,d3};
  
endmodule
