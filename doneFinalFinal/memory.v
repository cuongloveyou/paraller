module memory(
input clk, rst_n, en, rd,

input [7:0]pixelw,

output reg [7:0]pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9,
output reg done
);

reg [7:0]mem_read[0:65][0:65];
reg [7:0]mem_write[0:63][0:63];
reg [6:0]i, ii;
reg [6:0]j, jj;
reg [12:0] cnt;

always @(posedge clk)
begin
if (!rst_n)
  begin
    cnt <= 0;
    i <= 0;
    j <= 0;
  end
else if(rd == 1)
	begin
	pixelr1 <= mem_read[i][j];
	pixelr2 <= mem_read[i][j+1];
	pixelr3 <= mem_read[i][j+2];
	pixelr4 <= mem_read[i+1][j];
	pixelr5 <= mem_read[i+1][j+1];
	pixelr6 <= mem_read[i+1][j+2];
	pixelr7 <= mem_read[i+2][j];
	pixelr8 <= mem_read[i+2][j+1];
	pixelr9 <= mem_read[i+2][j+2];
	
	j <= (j == 63) ? 0:(j+1);
	i <= (j == 63) ? (i+1):i;
	
	cnt <= cnt + 1'b1;
	end
else
	begin
	pixelr1 <= 8'b0;
	pixelr2 <= 8'b0;
	pixelr3 <= 8'b0;
	pixelr4 <= 8'b0;
	pixelr5 <= 8'b0;
	pixelr6 <= 8'b0;
	pixelr7 <= 8'b0;
	pixelr8 <= 8'b0;
	pixelr9 <= 8'b0;
	end
end
always @(posedge clk)
begin
if(!rst_n)
begin
    ii <= 0;
    jj <= 0;
    done <= 0;
end
else if(cnt > 11)
  begin
    if(jj < 63)
      jj <= jj + 1;
    else
      begin
        jj <= 0;
        ii <= ii + 1;
      end
    if(ii > 63)
      done <= 1;
  end
end
always @(posedge clk)
begin
  if(cnt > 11)
	begin
	mem_write[ii][jj] <= pixelw;
	end
	else mem_write[ii][jj] <= 0;
end

endmodule
