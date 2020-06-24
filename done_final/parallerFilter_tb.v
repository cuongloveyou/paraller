module parallerFilter_tb();
  integer i;
  reg clk,rst_n,en;
  reg [7:0] mem_read1[0:4643], mem_read2[0:4643], mem_read3[0:4643], mem_read4[0:4643], mem_read5[0:4643], mem_read6[0:4643], mem_read7[0:4643], mem_read8[0:4643],
            mem_read9[0:4643], mem_read10[0:4643], mem_read11[0:4643], mem_read12[0:4643], mem_read13[0:4643], mem_read14[0:4643], mem_read15[0:4643], mem_read16[0:4643];
  wire rd;
  wire [7:0]cl_pixel;
  parallerFilter pp( clk, rst_n, en, rd, cl_pixel);
  
initial 
begin
$readmemh("memory_1.txt",mem_read1);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem1.mem_read[i] = mem_read1[i];

$readmemh("memory_2.txt",mem_read2);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem2.mem_read[i] = mem_read2[i];

$readmemh("memory_3.txt",mem_read3);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem3.mem_read[i] = mem_read3[i];

$readmemh("memory_4.txt",mem_read4);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem4.mem_read[i] = mem_read4[i];

$readmemh("memory_5.txt",mem_read5);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem5.mem_read[i] = mem_read5[i];

$readmemh("memory_6.txt",mem_read6);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem6.mem_read[i] = mem_read6[i];

$readmemh("memory_7.txt",mem_read7);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem7.mem_read[i] = mem_read7[i];

$readmemh("memory_8.txt",mem_read8);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem8.mem_read[i] = mem_read8[i];

$readmemh("memory_9.txt",mem_read9);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem9.mem_read[i] = mem_read9[i];

$readmemh("memory_10.txt",mem_read10);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem10.mem_read[i] = mem_read10[i];

$readmemh("memory_11.txt",mem_read11);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem11.mem_read[i] = mem_read11[i];

$readmemh("memory_12.txt",mem_read12);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem12.mem_read[i] = mem_read12[i];

$readmemh("memory_13.txt",mem_read13);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem13.mem_read[i] = mem_read13[i];

$readmemh("memory_14.txt",mem_read14);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem14.mem_read[i] = mem_read14[i];

$readmemh("memory_15.txt",mem_read15);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem15.mem_read[i] = mem_read15[i];

$readmemh("memory_16.txt",mem_read16);
for (i = 0; i < 4644; i = i + 1)
pp.mem.mem16.mem_read[i] = mem_read16[i];

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
