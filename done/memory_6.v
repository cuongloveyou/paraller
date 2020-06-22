module memory_6(
input clk, rst_n, rd, wr,

input [7:0]pixelw,

output reg [7:0]pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9
);

reg [7:0]mem_read[0:8771];
reg [7:0]mem_write[0:8771];
reg [14:0]i;
reg [8:0]j;
reg [14:0]cnt;

always @(posedge clk)
begin
$readmemh("memory_6.txt",mem_read);
if (!rst_n)
  begin
    i = 0;
    j = 0;
    cnt = 0;
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
	
	j = (j == 255) ? 0:(j+1);
	i = (j == 0) ? (i+258):i;
	end
else
	begin
	
	end
end
always @(posedge clk)
begin
if(wr)
	begin
	mem_write[cnt] <= pixelw;
  cnt = cnt + 1;
	end
else
  begin
  end
end
endmodule




