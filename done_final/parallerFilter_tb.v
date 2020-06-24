module parallerFilter_tb();
  integer i;
  reg clk,rst_n,en;
  reg [7:0] mem_read1[0:8771], mem_read2[0:8771], mem_read3[0:8771], mem_read4[0:8771], mem_read5[0:8771], mem_read6[0:8771], mem_read7[0:8771], mem_read8[0:8771];
  wire rd;
  wire [7:0]cl_pixel;
  parallerFilter pp( clk, rst_n, en, rd, cl_pixel);
  
initial 
begin
$readmemh("memory_1.txt",mem_read1);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem1.mem_read[i] = mem_read1[i];

$readmemh("memory_2.txt",mem_read2);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem2.mem_read[i] = mem_read2[i];

$readmemh("memory_3.txt",mem_read3);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem3.mem_read[i] = mem_read3[i];

$readmemh("memory_4.txt",mem_read4);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem4.mem_read[i] = mem_read4[i];

$readmemh("memory_5.txt",mem_read5);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem5.mem_read[i] = mem_read5[i];

$readmemh("memory_6.txt",mem_read6);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem6.mem_read[i] = mem_read6[i];

$readmemh("memory_7.txt",mem_read7);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem7.mem_read[i] = mem_read7[i];

$readmemh("memory_8.txt",mem_read8);
for (i = 0; i < 8772; i = i + 1)
pp.mem.mem8.mem_read[i] = mem_read8[i];

clk = 0;
forever #1 clk = ~clk;
end
initial
begin
  
rst_n = 0;
en = 0;
#3
en = 1;
rst_n = 1;

end
endmodule
