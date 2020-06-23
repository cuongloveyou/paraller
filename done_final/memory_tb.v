
module memory_tb();
reg clk,rst_n,rd;
reg [7:0]wr;
reg [7:0]pixelw;
reg[7:0]mem_read1[0:8771];
wire [7:0]pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9;
wire done;
integer i;
memory M(clk,rst_n,rd, pixelw, pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9,done);

initial 
begin
$readmemh("memory_1.txt",mem_read1);
for (i = 0; i < 8772; i = i + 1)
M.mem1.mem_read[i] = mem_read1[i];
clk = 0;
forever #10 clk = ~clk;
end
initial
begin
rd = 0;
wr = 8'h0;
rst_n = 0;
pixelw = 8'h7;
#30
rd = 1;
rst_n = 1;
wr = 8'h1;
#30
wr = 8'h2;
end
endmodule

