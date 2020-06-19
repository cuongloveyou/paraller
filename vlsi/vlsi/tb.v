module tb();
  reg clk = 0, rst_n, en, act;
  reg [7:0] sw_pixels1, sw_pixels3, sw_pixels2, sw_pixels4, sw_pixels5, sw_pixels6, sw_pixels7, sw_pixels8, sw_pixels9;
  wire wr;
  wire [7:0] cl_pixel;
  
  filter dut(.clk(clk), .rst_n(rst_n), .en(en), .act(act), .sw_pixels1(sw_pixels1), .sw_pixels2(sw_pixels2), .sw_pixels3(sw_pixels3), 
             .sw_pixels4(sw_pixels4), .sw_pixels5(sw_pixels5), .sw_pixels6(sw_pixels6), .sw_pixels7(sw_pixels7), .sw_pixels8(sw_pixels8), 
             .sw_pixels9(sw_pixels9), .wr(wr), .cl_pixel(cl_pixel));
  
  always #5 clk = ~clk;
    
  initial begin
    #10 sw_pixels1 = 8'd142; sw_pixels2 = 8'd142; sw_pixels3 = 8'd156; sw_pixels4 = 8'd142; sw_pixels5 = 8'd142; sw_pixels6 = 8'd156; 
        sw_pixels7 = 8'd155; sw_pixels8 = 8'd155; sw_pixels9 = 8'd136; rst_n = 1; en = 1; act = 1;
         $display("lan %d",clk);
    #10 sw_pixels1 = 8'd136; sw_pixels2 = 8'd136; sw_pixels3 = 8'd137; sw_pixels4 = 8'd135; sw_pixels5 = 8'd135; sw_pixels6 = 8'd137; 
        sw_pixels7 = 8'd138; sw_pixels8 = 8'd137; sw_pixels9 = 8'd137; rst_n = 1; en = 1; act = 1;
           $display("lan %d",clk);
    #10 sw_pixels1 = 8'd142; sw_pixels2 = 8'd142; sw_pixels3 = 8'd156; sw_pixels4 = 8'd142; sw_pixels5 = 8'd142; sw_pixels6 = 8'd156; 
        sw_pixels7 = 8'd155; sw_pixels8 = 8'd155; sw_pixels9 = 8'd136; rst_n = 1; en = 1; act = 1;
           $display("lan %d",clk);
  end
  
endmodule
