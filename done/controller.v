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
wire [1:0]act_p;
wire rd_p;
reg data_in;  
always @(posedge clk)
begin
  data_in <= 1'b1;
  act <= act_p[1];
  if(done)
  rd <= 0;
  else
  rd <= rd_p;
  
end 
DFF  D1(clk,rst_n,en,data_in,rd_p);
DFF  D2(clk,rst_n,en,rd_p,act_p[0]);
DFF  D3(clk,rst_n,en,act_p[0],act_p[1]);
endmodule    
