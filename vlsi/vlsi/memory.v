module memory(
  input clk, rst_n, en,
  output [7:0] sw_pixels1, sw_pixels2, sw_pixels3, sw_pixels4, sw_pixels5
  , sw_pixels6, sw_pixels7, sw_pixels8, sw_pixels9
  );
  
parameter val_0 = 8'd0;  
parameter val_1 = 8'd1;  
parameter val_2 = 8'd2;
parameter val_255 = 8'd255;  
parameter val_258 = 9'd258;
  
reg [7:0] reg_sw1;
reg [7:0] reg_sw2;
reg [7:0] reg_sw3;
reg [7:0] reg_sw4;
reg [7:0] reg_sw5;
reg [7:0] reg_sw6;
reg [7:0] reg_sw7;
reg [7:0] reg_sw8;
reg [7:0] reg_sw9;
reg [7:0] Imemory [0:66563]; // 66563
reg [16:0] addr;

integer i, j;

assign sw_pixels1 =  reg_sw1;
assign sw_pixels2 =  reg_sw2;
assign sw_pixels3 =  reg_sw3;
assign sw_pixels4 =  reg_sw4;
assign sw_pixels5 =  reg_sw5;
assign sw_pixels6 =  reg_sw6;
assign sw_pixels7 =  reg_sw7;
assign sw_pixels8 =  reg_sw8;
assign sw_pixels9 =  reg_sw9;

initial //for testing
	begin
		$readmemh("data.txt",Imemory);
		i = 1; j = 1;
	end
	
always @(posedge clk or negedge rst_n)
begin
  if(~rst_n)
    begin
		  i = 1; j = 1;
    end
  else if (en)
    begin
      reg_sw1 <= Imemory[val_258 * i - val_258 + j - val_1];
      reg_sw2 <= Imemory[val_258 * i - val_258 + j];
      reg_sw3 <= Imemory[val_258 * i - val_258 + j + val_1];
      reg_sw4 <= Imemory[val_258 * i + j - val_1];
      reg_sw5 <= Imemory[val_258 * i + j];
      reg_sw6 <= Imemory[val_258 * i + j + val_1];        
      reg_sw7 <= Imemory[val_258 * i + val_258 + j - val_1];
      reg_sw8 <= Imemory[val_258 * i + val_258 + j];
      reg_sw9 <= Imemory[val_258 * i + val_258 + j + val_1];
      i = (j == 5) ? i + 1 : i;
      j = (j == 5) ? 1 : j + 1;
    end
  else
    begin
    end
    
end
endmodule
