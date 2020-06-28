module DFF(clk,reset,en,Q,Q_next);
input clk,reset,en;
input Q;
output reg Q_next;
always @(posedge clk or negedge reset)
  if (~reset)
    Q_next <= 0;
  else if (en)
    Q_next <= Q;
endmodule
module controller(
  input clk, rst_n, en,done,
  output reg rd,
  output reg act
  );
wire act_p;
wire rd_p;
//reg data_in;  
always @(posedge clk)
begin
  //data_in <= en;
if(!rst_n) 
begin
act <= 1'b0;
end
else
begin
  act <= act_p;
  if(done)
    begin
  rd <= 0;
  act <= 0;
end
  else
  rd <= rd_p;
end
end 
DFF  D1(clk,rst_n,en,en,rd_p);
DFF  D2(clk,rst_n,en,rd_p,act_p);
endmodule    
