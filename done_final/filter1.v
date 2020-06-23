module filter1(
  input clk, rst_n, en, act,
  input [7:0] sw_pixels1, sw_pixels2, sw_pixels3, sw_pixels4, sw_pixels5, sw_pixels6, sw_pixels7, sw_pixels8, sw_pixels9,
  output wr,
  output [7:0] cl_pixel
  );
  
  parameter val_248 = 8'd248;
  
  
  wire [15:0] sas_out1, sas_out2, sas_out3, sas_out4, sas_out6, sas_out7, sas_out8, sas_out9;
  
  wire [15:0] mul_out11, mul_out12, mul_out13, mul_out14, mul_out21, mul_out22, mul_out23, mul_out24, mul_out31, mul_out32, mul_out33,
            mul_out34, mul_out41, mul_out42, mul_out43, mul_out44, mul_out54, mul_out61, mul_out62, mul_out63, mul_out64, mul_out71,
            mul_out72, mul_out73, mul_out74, mul_out81, mul_out82, mul_out83, mul_out84, mul_out91, mul_out92, mul_out93, mul_out94;

wire [11:0] add_out_8b_1, add_out_8b_2, add_B ;
  wire [19:0] add_out_16b_1, add_out_16b_2, add_A;
            
  reg [135:0] reg_mul_1,reg_mul_2, reg_mul_3, reg_mul_4;
  reg [215:0] reg_add;
  reg [63:0] reg_preAB;
  reg [23:0] reg_AB;
  reg result;
  
  sas sas1(sw_pixels1, sw_pixels5, sas_out1);
  sas sas2(sw_pixels2, sw_pixels5, sas_out2);
  sas sas3(sw_pixels3, sw_pixels5, sas_out3);
  sas sas4(sw_pixels4, sw_pixels5, sas_out4);
  //sas sas5(sw_pixels5, sw_pixels5, sas_out5);
  sas sas6(sw_pixels6, sw_pixels5, sas_out6);
  sas sas7(sw_pixels7, sw_pixels5, sas_out7);
  sas sas8(sw_pixels8, sw_pixels5, sas_out8);
  sas sas9(sw_pixels9, sw_pixels5, sas_out9);
  
  
  mul_8_bit mul11(reg_mul_1[127:120], reg_mul_1[127:120], mul_out11);
  mul_8_bit mul12(reg_mul_2[127:120], reg_mul_2[127:120], mul_out12);
  mul_8_bit mul13(reg_mul_3[127:120], reg_mul_3[127:120], mul_out13);
  mul_8_bit mul14(reg_mul_4[135:128], reg_mul_4[127:120], mul_out14);
  
  mul_8_bit mul21(reg_mul_1[111:104], reg_mul_1[111:104], mul_out21);
  mul_8_bit mul22(reg_mul_2[111:104], reg_mul_2[111:104], mul_out22);
  mul_8_bit mul23(reg_mul_3[111:104], reg_mul_3[111:104], mul_out23);
  mul_8_bit mul24(reg_mul_4[119:112], reg_mul_4[111:104], mul_out24);
  
  mul_8_bit mul31(reg_mul_1[95:88] , reg_mul_1[95:88], mul_out31);
  mul_8_bit mul32(reg_mul_2[95:88] , reg_mul_2[95:88], mul_out32);
  mul_8_bit mul33(reg_mul_3[95:88] , reg_mul_3[95:88], mul_out33);
  mul_8_bit mul34(reg_mul_4[103:96], reg_mul_4[95:88], mul_out34);
  
  
  mul_8_bit mul41(reg_mul_1[79:72], reg_mul_1[79:72], mul_out41);
  mul_8_bit mul42(reg_mul_2[79:72], reg_mul_2[79:72], mul_out42);
  mul_8_bit mul43(reg_mul_3[79:72], reg_mul_3[79:72], mul_out43);
  mul_8_bit mul44(reg_mul_4[87:80], reg_mul_4[79:72], mul_out44);
  
  mul_8_bit mul54(reg_mul_4[71:64], val_248, mul_out54);
  
  mul_8_bit mul61(reg_mul_1[55:48], reg_mul_1[55:48], mul_out61);
  mul_8_bit mul62(reg_mul_2[55:48], reg_mul_2[55:48], mul_out62);
  mul_8_bit mul63(reg_mul_3[55:48], reg_mul_3[55:48], mul_out63);
  mul_8_bit mul64(reg_mul_4[63:56], reg_mul_4[55:48], mul_out64);
 
  mul_8_bit mul71(reg_mul_1[39:32], reg_mul_1[39:32], mul_out71);
  mul_8_bit mul72(reg_mul_2[39:32], reg_mul_2[39:32], mul_out72);
  mul_8_bit mul73(reg_mul_3[39:32], reg_mul_3[39:32], mul_out73);
  mul_8_bit mul74(reg_mul_4[47:40], reg_mul_4[39:32], mul_out74);
  
  mul_8_bit mul81(reg_mul_1[23:16], reg_mul_1[23:16], mul_out81);
  mul_8_bit mul82(reg_mul_2[23:16], reg_mul_2[23:16], mul_out82);
  mul_8_bit mul83(reg_mul_3[23:16], reg_mul_3[23:16], mul_out83);
  mul_8_bit mul84(reg_mul_4[31:24], reg_mul_4[23:16], mul_out84);
  
  mul_8_bit mul91(reg_mul_1[7:0], reg_mul_1[7:0], mul_out91);
  mul_8_bit mul92(reg_mul_2[7:0], reg_mul_2[7:0], mul_out92);
  mul_8_bit mul93(reg_mul_3[7:0], reg_mul_3[7:0], mul_out93);
  mul_8_bit mul94(reg_mul_4[15:8],reg_mul_4[7:0], mul_out94);
  
  add_5_reg_8bit a5r1(reg_add[183:176], reg_add[175:168], reg_add[167:160], reg_add[159:152], reg_add[151:144], add_out_8b_1);
  add_5_reg_8bit a5r2(reg_add[215:208], reg_add[207:200], reg_add[199:192], reg_add[191:184], 8'd0, add_out_8b_2);
  add_12_bit a12(reg_preAB[63:52], reg_preAB[51:40], add_B);
  
  add_5_reg_16bit a5r16b1(reg_add[79:64], reg_add[63:48], reg_add[47:32], reg_add[31:16], reg_add[15:0], add_out_16b_1);
  add_5_reg_16bit a5r16b2(reg_add[143:128], reg_add[127:112], reg_add[111:96], reg_add[95:80], 16'd0, add_out_16b_2);
  add_20_bit a16(reg_preAB[39:20], reg_preAB[19:0], add_A);
  
  divider_16bit d16(clk, rst_n, reg_AB[15:0], reg_AB[23:16], cl_pixel);

  assign wr = result;
  
  always @(cl_pixel) begin
     result = 1'b1;
  end
  
  always @(posedge clk)
  begin
    if(act & rst_n) begin
     reg_mul_1 <= {sw_pixels1, sas_out1[7:0], sw_pixels2, sas_out2[7:0], sw_pixels3, sas_out3[7:0], sw_pixels4, sas_out4[7:0], sw_pixels5, sw_pixels6, 
                  sas_out6[7:0], sw_pixels7, sas_out7[7:0], sw_pixels8, sas_out8[7:0], sw_pixels9, sas_out9[7:0]}; //136
    
     reg_mul_2 <= {reg_mul_1[135:128], mul_out11[15:8], reg_mul_1[119:112], mul_out21[15:8], reg_mul_1[103:96], mul_out31[15:8], reg_mul_1[87:80], mul_out41[15:8],
                reg_mul_1[71:64], reg_mul_1[63:56],mul_out61[15:8], reg_mul_1[47:40], mul_out71[15:8], reg_mul_1[31:24], mul_out81[15:8], reg_mul_1[15:8], mul_out91[15:8]};
    
     reg_mul_3 <= {reg_mul_2[135:128], mul_out12[15:8], reg_mul_2[119:112], mul_out22[15:8], reg_mul_2[103:96], mul_out32[15:8], reg_mul_2[87:80], mul_out42[15:8],
                reg_mul_2[71:64], reg_mul_2[63:56],mul_out62[15:8], reg_mul_2[47:40], mul_out72[15:8], reg_mul_2[31:24], mul_out82[15:8], reg_mul_2[15:8], mul_out92[15:8]};
               
     reg_mul_4 <= {reg_mul_3[135:128], mul_out13[15:8], reg_mul_3[119:112], mul_out23[15:8], reg_mul_3[103:96], mul_out33[15:8], reg_mul_3[87:80], mul_out43[15:8],
                reg_mul_3[71:64], reg_mul_3[63:56], mul_out63[15:8], reg_mul_3[47:40], mul_out73[15:8], reg_mul_3[31:24], mul_out83[15:8], reg_mul_3[15:8], mul_out93[15:8]};
    
     reg_add <= {reg_mul_4[127:120], reg_mul_4[111:104], reg_mul_4[95:88], reg_mul_4[79:72], 8'd248, reg_mul_4[55:48], reg_mul_4[39:32], reg_mul_4[23:16], reg_mul_4[7:0],
                mul_out14, mul_out24, mul_out34, mul_out44, mul_out54, mul_out64, mul_out74, mul_out84, mul_out94}; // 216
     
     reg_preAB <= {add_out_8b_1, add_out_8b_2, add_out_16b_1, add_out_16b_2}; // 64bit           
  
     reg_AB <= {add_B[11:4], add_A[19:4]}; // 24bit
   end
   else if(!rst_n) begin
	reg_mul_1 <= 136'b?;
	reg_mul_2 <= 136'b?;
	reg_mul_3 <= 136'b?;
	reg_mul_4 <= 136'b?;
	reg_add    <= 216'b?;
	reg_preAB <= 64'b?;
	reg_AB      <= 24'b?;

  end
       
  end
  
  
endmodule
