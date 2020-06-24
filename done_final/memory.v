module memory(
input clk, rst_n, rd, 

input [7:0]pixelw,

output reg [7:0]pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9,
output reg done
);

reg [16:0]cnt;
wire [7:0] reg_pixelr1_1, reg_pixelr1_2, reg_pixelr1_3, reg_pixelr1_4, reg_pixelr1_5, reg_pixelr1_6, reg_pixelr1_7, reg_pixelr1_8, reg_pixelr1_9;
wire [7:0] reg_pixelr2_1, reg_pixelr2_2, reg_pixelr2_3, reg_pixelr2_4, reg_pixelr2_5, reg_pixelr2_6, reg_pixelr2_7, reg_pixelr2_8, reg_pixelr2_9;
wire [7:0] reg_pixelr3_1, reg_pixelr3_2, reg_pixelr3_3, reg_pixelr3_4, reg_pixelr3_5, reg_pixelr3_6, reg_pixelr3_7, reg_pixelr3_8, reg_pixelr3_9;
wire [7:0] reg_pixelr4_1, reg_pixelr4_2, reg_pixelr4_3, reg_pixelr4_4, reg_pixelr4_5, reg_pixelr4_6, reg_pixelr4_7, reg_pixelr4_8, reg_pixelr4_9;
wire [7:0] reg_pixelr5_1, reg_pixelr5_2, reg_pixelr5_3, reg_pixelr5_4, reg_pixelr5_5, reg_pixelr5_6, reg_pixelr5_7, reg_pixelr5_8, reg_pixelr5_9;
wire [7:0] reg_pixelr6_1, reg_pixelr6_2, reg_pixelr6_3, reg_pixelr6_4, reg_pixelr6_5, reg_pixelr6_6, reg_pixelr6_7, reg_pixelr6_8, reg_pixelr6_9;
wire [7:0] reg_pixelr7_1, reg_pixelr7_2, reg_pixelr7_3, reg_pixelr7_4, reg_pixelr7_5, reg_pixelr7_6, reg_pixelr7_7, reg_pixelr7_8, reg_pixelr7_9;
wire [7:0] reg_pixelr8_1, reg_pixelr8_2, reg_pixelr8_3, reg_pixelr8_4, reg_pixelr8_5, reg_pixelr8_6, reg_pixelr8_7, reg_pixelr8_8, reg_pixelr8_9;
wire [7:0] reg_pixelr9_1, reg_pixelr9_2, reg_pixelr9_3, reg_pixelr9_4, reg_pixelr9_5, reg_pixelr9_6, reg_pixelr9_7, reg_pixelr9_8, reg_pixelr9_9;
wire [7:0] reg_pixelr10_1, reg_pixelr10_2, reg_pixelr10_3, reg_pixelr10_4, reg_pixelr10_5, reg_pixelr10_6, reg_pixelr10_7, reg_pixelr10_8, reg_pixelr10_9;
wire [7:0] reg_pixelr11_1, reg_pixelr11_2, reg_pixelr11_3, reg_pixelr11_4, reg_pixelr11_5, reg_pixelr11_6, reg_pixelr11_7, reg_pixelr11_8, reg_pixelr11_9;
wire [7:0] reg_pixelr12_1, reg_pixelr12_2, reg_pixelr12_3, reg_pixelr12_4, reg_pixelr12_5, reg_pixelr12_6, reg_pixelr12_7, reg_pixelr12_8, reg_pixelr12_9;
wire [7:0] reg_pixelr13_1, reg_pixelr13_2, reg_pixelr13_3, reg_pixelr13_4, reg_pixelr13_5, reg_pixelr13_6, reg_pixelr13_7, reg_pixelr13_8, reg_pixelr13_9;
wire [7:0] reg_pixelr14_1, reg_pixelr14_2, reg_pixelr14_3, reg_pixelr14_4, reg_pixelr14_5, reg_pixelr14_6, reg_pixelr14_7, reg_pixelr14_8, reg_pixelr14_9;
wire [7:0] reg_pixelr15_1, reg_pixelr15_2, reg_pixelr15_3, reg_pixelr15_4, reg_pixelr15_5, reg_pixelr15_6, reg_pixelr15_7, reg_pixelr15_8, reg_pixelr15_9;
wire [7:0] reg_pixelr16_1, reg_pixelr16_2, reg_pixelr16_3, reg_pixelr16_4, reg_pixelr16_5, reg_pixelr16_6, reg_pixelr16_7, reg_pixelr16_8, reg_pixelr16_9;
reg wr1, wr2, wr3, wr4, wr5, wr6, wr7, wr8, wr9, wr10, wr11, wr12, wr13, wr14, wr15, wr16;
reg rd1, rd2, rd3, rd4, rd5, rd6, rd7, rd8, rd9, rd10, rd11, rd12, rd13, rd14, rd15, rd16;

//memory_1 mem1(clk, rd1, wr, reg_pixelr1);
//memory_2 mem2(clk, rd2, wr, reg_pixelr2);
memory_1 mem1(clk, rst_n, rd1, wr1, pixelw, reg_pixelr1_1, reg_pixelr1_2, reg_pixelr1_3, reg_pixelr1_4, reg_pixelr1_5, reg_pixelr1_6, reg_pixelr1_7, reg_pixelr1_8, reg_pixelr1_9);
memory_2 mem2(clk, rst_n, rd2, wr2, pixelw, reg_pixelr2_1, reg_pixelr2_2, reg_pixelr2_3, reg_pixelr2_4, reg_pixelr2_5, reg_pixelr2_6, reg_pixelr2_7, reg_pixelr2_8, reg_pixelr2_9);
memory_3 mem3(clk, rst_n, rd3, wr3, pixelw, reg_pixelr3_1, reg_pixelr3_2, reg_pixelr3_3, reg_pixelr3_4, reg_pixelr3_5, reg_pixelr3_6, reg_pixelr3_7, reg_pixelr3_8, reg_pixelr3_9);
memory_4 mem4(clk, rst_n, rd4, wr4, pixelw, reg_pixelr4_1, reg_pixelr4_2, reg_pixelr4_3, reg_pixelr4_4, reg_pixelr4_5, reg_pixelr4_6, reg_pixelr4_7, reg_pixelr4_8, reg_pixelr4_9);
memory_5 mem5(clk, rst_n, rd5, wr5, pixelw, reg_pixelr5_1, reg_pixelr5_2, reg_pixelr5_3, reg_pixelr5_4, reg_pixelr5_5, reg_pixelr5_6, reg_pixelr5_7, reg_pixelr5_8, reg_pixelr5_9);
memory_6 mem6(clk, rst_n, rd6, wr6, pixelw, reg_pixelr6_1, reg_pixelr6_2, reg_pixelr6_3, reg_pixelr6_4, reg_pixelr6_5, reg_pixelr6_6, reg_pixelr6_7, reg_pixelr6_8, reg_pixelr6_9);
memory_7 mem7(clk, rst_n, rd7, wr7, pixelw, reg_pixelr7_1, reg_pixelr7_2, reg_pixelr7_3, reg_pixelr7_4, reg_pixelr7_5, reg_pixelr7_6, reg_pixelr7_7, reg_pixelr7_8, reg_pixelr7_9);
memory_8 mem8(clk, rst_n, rd8, wr8, pixelw, reg_pixelr8_1, reg_pixelr8_2, reg_pixelr8_3, reg_pixelr8_4, reg_pixelr8_5, reg_pixelr8_6, reg_pixelr8_7, reg_pixelr8_8, reg_pixelr8_9);

memory_9 mem9(clk, rst_n, rd9, wr9, pixelw, reg_pixelr9_1, reg_pixelr9_2, reg_pixelr9_3, reg_pixelr9_4, reg_pixelr9_5, reg_pixelr9_6, reg_pixelr9_7, reg_pixelr9_8, reg_pixelr9_9);
memory_10 mem10(clk, rst_n, rd10, wr10, pixelw, reg_pixelr10_1, reg_pixelr10_2, reg_pixelr10_3, reg_pixelr10_4, reg_pixelr10_5, reg_pixelr10_6, reg_pixelr10_7, reg_pixelr10_8, reg_pixelr10_9);
memory_11 mem11(clk, rst_n, rd11, wr11, pixelw, reg_pixelr11_1, reg_pixelr11_2, reg_pixelr11_3, reg_pixelr11_4, reg_pixelr11_5, reg_pixelr11_6, reg_pixelr11_7, reg_pixelr11_8, reg_pixelr11_9);
memory_12 mem12(clk, rst_n, rd12, wr12, pixelw, reg_pixelr12_1, reg_pixelr12_2, reg_pixelr12_3, reg_pixelr12_4, reg_pixelr12_5, reg_pixelr12_6, reg_pixelr12_7, reg_pixelr12_8, reg_pixelr12_9);
memory_13 mem13(clk, rst_n, rd13, wr13, pixelw, reg_pixelr13_1, reg_pixelr13_2, reg_pixelr13_3, reg_pixelr13_4, reg_pixelr13_5, reg_pixelr13_6, reg_pixelr13_7, reg_pixelr13_8, reg_pixelr13_9);
memory_14 mem14(clk, rst_n, rd14, wr14, pixelw, reg_pixelr14_1, reg_pixelr14_2, reg_pixelr14_3, reg_pixelr14_4, reg_pixelr14_5, reg_pixelr14_6, reg_pixelr14_7, reg_pixelr14_8, reg_pixelr14_9);
memory_15 mem15(clk, rst_n, rd15, wr15, pixelw, reg_pixelr15_1, reg_pixelr15_2, reg_pixelr15_3, reg_pixelr15_4, reg_pixelr15_5, reg_pixelr15_6, reg_pixelr15_7, reg_pixelr15_8, reg_pixelr15_9);
memory_16 mem16(clk, rst_n, rd16, wr16, pixelw, reg_pixelr16_1, reg_pixelr16_2, reg_pixelr16_3, reg_pixelr16_4, reg_pixelr16_5, reg_pixelr16_6, reg_pixelr16_7, reg_pixelr16_8, reg_pixelr16_9);

always @(posedge clk, negedge rst_n)
  begin
    if(!rst_n) 
    begin
      cnt <= 16'h0;
      {pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9} <= 9'd0;
  end
    else if(rd)
      begin
        if (cnt < 4098) 
          begin
            pixelr1 <= reg_pixelr1_1;
            pixelr2 <= reg_pixelr1_2;
            pixelr3 <= reg_pixelr1_3;
            pixelr4 <= reg_pixelr1_4;
            pixelr5 <= reg_pixelr1_5;
            pixelr6 <= reg_pixelr1_6;
            pixelr7 <= reg_pixelr1_7;
            pixelr8 <= reg_pixelr1_8;
            pixelr9 <= reg_pixelr1_9;
          end
        else if (cnt < 8194)
        begin
            pixelr1 <= reg_pixelr2_1;
            pixelr2 <= reg_pixelr2_2;
            pixelr3 <= reg_pixelr2_3;
            pixelr4 <= reg_pixelr2_4;
            pixelr5 <= reg_pixelr2_5;
            pixelr6 <= reg_pixelr2_6;
            pixelr7 <= reg_pixelr2_7;
            pixelr8 <= reg_pixelr2_8;
            pixelr9 <= reg_pixelr2_9;
        end
        else if (cnt < 12290)
        begin
            pixelr1 <= reg_pixelr3_1;
            pixelr2 <= reg_pixelr3_2;
            pixelr3 <= reg_pixelr3_3;
            pixelr4 <= reg_pixelr3_4;
            pixelr5 <= reg_pixelr3_5;
            pixelr6 <= reg_pixelr3_6;
            pixelr7 <= reg_pixelr3_7;
            pixelr8 <= reg_pixelr3_8;
            pixelr9 <= reg_pixelr3_9;
        end
        else if (cnt < 16386)
        begin
            pixelr1 <= reg_pixelr4_1;
            pixelr2 <= reg_pixelr4_2;
            pixelr3 <= reg_pixelr4_3;
            pixelr4 <= reg_pixelr4_4;
            pixelr5 <= reg_pixelr4_5;
            pixelr6 <= reg_pixelr4_6;
            pixelr7 <= reg_pixelr4_7;
            pixelr8 <= reg_pixelr4_8;
            pixelr9 <= reg_pixelr4_9;
        end
        else if (cnt < 20482)
        begin
            pixelr1 <= reg_pixelr5_1;
            pixelr2 <= reg_pixelr5_2;
            pixelr3 <= reg_pixelr5_3;
            pixelr4 <= reg_pixelr5_4;
            pixelr5 <= reg_pixelr5_5;
            pixelr6 <= reg_pixelr5_6;
            pixelr7 <= reg_pixelr5_7;
            pixelr8 <= reg_pixelr5_8;
            pixelr9 <= reg_pixelr5_9;
        end
        else if (cnt < 24578)
        begin
            pixelr1 <= reg_pixelr6_1;
            pixelr2 <= reg_pixelr6_2;
            pixelr3 <= reg_pixelr6_3;
            pixelr4 <= reg_pixelr6_4;
            pixelr5 <= reg_pixelr6_5;
            pixelr6 <= reg_pixelr6_6;
            pixelr7 <= reg_pixelr6_7;
            pixelr8 <= reg_pixelr6_8;
            pixelr9 <= reg_pixelr6_9;
        end
        else if (cnt < 28674)
        begin
            pixelr1 <= reg_pixelr7_1;
            pixelr2 <= reg_pixelr7_2;
            pixelr3 <= reg_pixelr7_3;
            pixelr4 <= reg_pixelr7_4;
            pixelr5 <= reg_pixelr7_5;
            pixelr6 <= reg_pixelr7_6;
            pixelr7 <= reg_pixelr7_7;
            pixelr8 <= reg_pixelr7_8;
            pixelr9 <= reg_pixelr7_9;
        end
        else if (cnt < 32770)
        begin
            pixelr1 <= reg_pixelr8_1;
            pixelr2 <= reg_pixelr8_2;
            pixelr3 <= reg_pixelr8_3;
            pixelr4 <= reg_pixelr8_4;
            pixelr5 <= reg_pixelr8_5;
            pixelr6 <= reg_pixelr8_6;
            pixelr7 <= reg_pixelr8_7;
            pixelr8 <= reg_pixelr8_8;
            pixelr9 <= reg_pixelr8_9;
        end
      else if (cnt < 36866) 
          begin
            pixelr1 <= reg_pixelr9_1;
            pixelr2 <= reg_pixelr9_2;
            pixelr3 <= reg_pixelr9_3;
            pixelr4 <= reg_pixelr9_4;
            pixelr5 <= reg_pixelr9_5;
            pixelr6 <= reg_pixelr9_6;
            pixelr7 <= reg_pixelr9_7;
            pixelr8 <= reg_pixelr9_8;
            pixelr9 <= reg_pixelr9_9;
          end
        else if (cnt < 40962)
        begin
            pixelr1 <= reg_pixelr10_1;
            pixelr2 <= reg_pixelr10_2;
            pixelr3 <= reg_pixelr10_3;
            pixelr4 <= reg_pixelr10_4;
            pixelr5 <= reg_pixelr10_5;
            pixelr6 <= reg_pixelr10_6;
            pixelr7 <= reg_pixelr10_7;
            pixelr8 <= reg_pixelr10_8;
            pixelr9 <= reg_pixelr10_9;
        end
        else if (cnt < 45058)
        begin
            pixelr1 <= reg_pixelr11_1;
            pixelr2 <= reg_pixelr11_2;
            pixelr3 <= reg_pixelr11_3;
            pixelr4 <= reg_pixelr11_4;
            pixelr5 <= reg_pixelr11_5;
            pixelr6 <= reg_pixelr11_6;
            pixelr7 <= reg_pixelr11_7;
            pixelr8 <= reg_pixelr11_8;
            pixelr9 <= reg_pixelr11_9;
        end
        else if (cnt < 49154)
        begin
            pixelr1 <= reg_pixelr12_1;
            pixelr2 <= reg_pixelr12_2;
            pixelr3 <= reg_pixelr12_3;
            pixelr4 <= reg_pixelr12_4;
            pixelr5 <= reg_pixelr12_5;
            pixelr6 <= reg_pixelr12_6;
            pixelr7 <= reg_pixelr12_7;
            pixelr8 <= reg_pixelr12_8;
            pixelr9 <= reg_pixelr12_9;
        end
        else if (cnt < 53250)
        begin
            pixelr1 <= reg_pixelr13_1;
            pixelr2 <= reg_pixelr13_2;
            pixelr3 <= reg_pixelr13_3;
            pixelr4 <= reg_pixelr13_4;
            pixelr5 <= reg_pixelr13_5;
            pixelr6 <= reg_pixelr13_6;
            pixelr7 <= reg_pixelr13_7;
            pixelr8 <= reg_pixelr13_8;
            pixelr9 <= reg_pixelr13_9;
        end
        else if (cnt < 57346)
        begin
            pixelr1 <= reg_pixelr14_1;
            pixelr2 <= reg_pixelr14_2;
            pixelr3 <= reg_pixelr14_3;
            pixelr4 <= reg_pixelr14_4;
            pixelr5 <= reg_pixelr14_5;
            pixelr6 <= reg_pixelr14_6;
            pixelr7 <= reg_pixelr14_7;
            pixelr8 <= reg_pixelr14_8;
            pixelr9 <= reg_pixelr14_9;
        end
        else if (cnt < 61442)
        begin
            pixelr1 <= reg_pixelr15_1;
            pixelr2 <= reg_pixelr15_2;
            pixelr3 <= reg_pixelr15_3;
            pixelr4 <= reg_pixelr15_4;
            pixelr5 <= reg_pixelr15_5;
            pixelr6 <= reg_pixelr15_6;
            pixelr7 <= reg_pixelr15_7;
            pixelr8 <= reg_pixelr15_8;
            pixelr9 <= reg_pixelr15_9;
        end
        else
        begin
            pixelr1 <= reg_pixelr16_1;
            pixelr2 <= reg_pixelr16_2;
            pixelr3 <= reg_pixelr16_3;
            pixelr4 <= reg_pixelr16_4;
            pixelr5 <= reg_pixelr16_5;
            pixelr6 <= reg_pixelr16_6;
            pixelr7 <= reg_pixelr16_7;
            pixelr8 <= reg_pixelr16_8;
            pixelr9 <= reg_pixelr16_9;
        end
      cnt <= cnt + 1'b1;
    end
  end
   

always @(posedge clk or negedge rst_n)
begin
  if(!rst_n)
    begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd0;
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd0;
        done <= 1'b0;
    end
    else if (rd)
    begin
      if (cnt == 0)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd1;
      end
      else if(cnt == 13)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd1;
      end
      else if (cnt == 4096)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd2;
      end
      else if(cnt == 4109)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd2;
      end
      else if (cnt == 8192)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd4;
      end
      else if(cnt == 8205)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd4;
      end
      else if (cnt == 12288)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd8;
      end
      else if(cnt == 12301)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd8;
      end
      else if (cnt == 16384)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd16;
      end
      else if(cnt == 16397)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd16;
      end
      else if (cnt == 20480)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd32;
      end
      else if(cnt == 20493)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd32;
      end
      else if (cnt == 24576)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd64;
      end
      else if(cnt == 24589)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd64;
      end
      else if (cnt == 28672)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd128;
      end
      else if(cnt == 28685) //cnt rd + 13
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd128;
      end
      
    else if (cnt == 32768)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd256;
      end
      else if(cnt == 32781)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd256;
      end
      else if (cnt == 36864)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd512;
      end
      else if(cnt == 36877)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd512;
      end
      else if (cnt == 40960)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd1024;
      end
      else if(cnt == 40973)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd1024;
      end
      else if (cnt == 45056)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd2048;
      end
      else if(cnt == 45069)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd2048;
      end
      else if (cnt == 49152)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd4096;
      end
      else if(cnt == 49165)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd4096;
      end
      else if (cnt == 53248)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd8192;
      end
      else if(cnt == 53261)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd8192;
      end
      else if (cnt == 57344)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd16384;
      end
      else if(cnt == 57357)
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd16384;
      end
      else if (cnt == 61440)
      begin
        {rd16,rd15,rd14,rd13,rd12,rd11,rd10,rd9,rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} <= 16'd32768;
      end
      else if(cnt == 61453) //cnt rd + 13
      begin
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd32768;
      end
      
    else if(cnt == 65549)
      begin
        done <= 1'b1;
        {wr16,wr15,wr14,wr13,wr12,wr11,wr10,wr9,wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} <= 16'd0;
      end
    end
    else
      begin
      end
end

endmodule
