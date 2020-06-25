module parallerFilter_tb();
  integer i,j;
  reg clk,rst_n,en;
  reg [7:0] mem_read[0:65][0:65];
  wire rd;
  wire [7:0]cl_pixel;
  parallerFilter pp( clk, rst_n, en, rd, cl_pixel);
  
initial 
begin
$readmemh("memory.txt",mem_read);
for (i = 0; i < 66; i = i + 1)
for (j = 0; j < 66; j = j + 1)
pp.mem.mem_read[i][j] = mem_read[i][j];

clk = 0;
forever #1 clk = ~clk;
end
initial
begin
  
rst_n = 1;
en = 0;
#1
rst_n = 0;
#3
en = 1;
rst_n = 1;

end
endmodule
