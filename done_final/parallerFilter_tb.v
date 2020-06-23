module parallerFilter_tb();
  reg clk,rst_n,en;
  
  parallerFilter pp( clk, rst_n, en);
  
initial 
begin
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
