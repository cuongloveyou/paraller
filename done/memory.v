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
reg wr1, wr2, wr3, wr4, wr5, wr6, wr7, wr8;
reg rd1, rd2, rd3, rd4, rd5, rd6, rd7, rd8;

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

always @(posedge clk, negedge rst_n)
  begin
    if(!rst_n) 
      cnt <= 16'h0;
    else if(rd)
      begin
        if (cnt < 8194) 
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
        else if (cnt < 16386)
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
        else if (cnt < 24578)
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
        else if (cnt < 32770)
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
        else if (cnt < 40962)
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
        else if (cnt < 49154)
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
        else if (cnt < 57346)
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
        else
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
      cnt <= cnt + 1'b1;
    end
  end
   

always @(posedge clk or negedge rst_n)
begin
  if(!rst_n)
    begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00000000;
        done = 1'b0;
    end
    else if (rd)
    begin
      if (cnt == 0)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00000001;
      end
      else if(cnt == 13)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b00000001;
      end
      else if (cnt == 8192)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00000010;
      end
      else if(cnt == 8205)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b00000010;
      end
      else if (cnt == 16384)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00000100;
      end
      else if(cnt == 16397)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b00000100;
      end
      else if (cnt == 24576)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00001000;
      end
      else if(cnt == 24589)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b00001000;
      end
      else if (cnt == 32768)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00010000;
      end
      else if(cnt == 32781)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b00010000;
      end
      else if (cnt == 40960)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b00100000;
      end
      else if(cnt == 40973)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b00100000;
      end
      else if (cnt == 49152)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b01000000;
      end
      else if(cnt == 49165)
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b01000000;
      end
      else if (cnt == 57344)
      begin
        {rd8,rd7,rd6,rd5,rd4,rd3,rd2,rd1} = 8'b10000000;
      end
      else if(cnt == 57357) //cnt rd + 11
      begin
        {wr8,wr7,wr6,wr5,wr4,wr3,wr2,wr1} = 8'b10000000;
      end
    else if(cnt == 65536)
      begin
        done <= 1'b1;
      end
    end
    else
      begin
      end
end

endmodule

