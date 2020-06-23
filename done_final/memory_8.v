module memory_8(
input clk, rst_n, rd, wr,

input [7:0]pixelw,

output reg [7:0]pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9
);

parameter _1b1 = 1'b1;

reg [7:0]mem_read[0:8771];
reg [7:0]mem_write[0:8771];
reg [14:0]i;
reg [8:0]j;
reg [14:0]cnt;

always @(posedge clk)
begin
$readmemh("\/home\/lab\/ddas\/aaaa\/memory_8.txt",mem_read);
if (!rst_n)
  begin
    i <= 0;
    j <= 0;
  end
else if(rd == 1)
	begin
	pixelr1 <= mem_read[i+j];
	pixelr2 <= mem_read[i+j+1];
	pixelr3 <= mem_read[i+j+2];
	pixelr4 <= mem_read[i+j+258];
	pixelr5 <= mem_read[i+j+258+1];
	pixelr6 <= mem_read[i+j+258+2];
	pixelr7 <= mem_read[i+j+516];
	pixelr8 <= mem_read[i+j+516+1];
	pixelr9 <= mem_read[i+j+516+2];
	
	j <= (j == 255) ? 0:(j+1);
	i <= (j == 255) ? (i+258):i;
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
    cnt <= 0;
end
else
if(wr)
	begin
	mem_write[cnt] <= pixelw;
  	cnt <= cnt + _1b1;
	end
else
   mem_write[cnt] <= 0;
  
end

endmodule
