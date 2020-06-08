module add_12bit(
  input [11:0] no1,
  input [11:0] no2,
  output [11:0] result
  );
  
  wire [12:0] c;
  
  add_1bit add0(no1[0],no2[0],1'b0,result[0],c[1]);
  add_1bit add1(no1[1],no2[1],c[1],result[1],c[2]);
  add_1bit add2(no1[2],no2[2],c[2],result[2],c[3]);
  add_1bit add3(no1[3],no2[3],c[3],result[3],c[4]);
  add_1bit add4(no1[4],no2[4],c[4],result[4],c[5]);
  add_1bit add5(no1[5],no2[5],c[5],result[5],c[6]);
  add_1bit add6(no1[6],no2[6],c[6],result[6],c[7]);
  add_1bit add7(no1[7],no2[7],c[7],result[7],c[8]);
  add_1bit add8(no1[8],no2[8],c[8],result[8],c[9]);
  add_1bit add9(no1[9],no2[9],c[9],result[9],c[10]);
  add_1bit add10(no1[10],no2[10],c[10],result[10],c[11]);
  add_1bit add11(no1[11],no2[11],c[11],result[11],c[12]);
  
  
endmodule
