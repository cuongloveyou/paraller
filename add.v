module add_12bit(
  input [11:0] no1,
  input [11:0] no2,
  output [11:0] result
  );
  
  wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;
  
  add_1bit add0(no1[0],no2[0],0,result[0],c1);
  add_1bit add1(no1[1],no2[1],c1,result[1],c2);
  add_1bit add2(no1[2],no2[2],c2,result[2],c3);
  add_1bit add3(no1[3],no2[3],c3,result[3],c4);
  add_1bit add4(no1[4],no2[4],c4,result[4],c5);
  add_1bit add5(no1[5],no2[5],c5,result[5],c6);
  add_1bit add6(no1[6],no2[6],c6,result[6],c7);
  add_1bit add7(no1[7],no2[7],c7,result[7],c8);
  add_1bit add8(no1[8],no2[8],c8,result[8],c9);
  add_1bit add9(no1[9],no2[9],c9,result[9],c10);
  add_1bit add10(no1[10],no2[10],c10,result[10],c11);
  add_1bit add11(no1[11],no2[11],c11,result[11],c12);
  
  
endmodule
