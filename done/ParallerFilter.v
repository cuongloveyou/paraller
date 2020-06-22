module parallerFilter(
  input clk, rst_n, en
  );
  
  wire rd, wr, act, done; // wr k dung
  wire [7:0] cl_pixel;
  wire [7:0]pixelr1,pixelr2,pixelr3,pixelr4,pixelr5,pixelr6,pixelr7,pixelr8,pixelr9;
  
  controller ctrl(clk, rst_n, en, done, rd, act);
  memory mem(.clk(clk), .rst_n(rst_n), .rd(rd), .pixelw(cl_pixel), .pixelr1(pixelr1),.pixelr2(pixelr2),.pixelr3(pixelr3),.pixelr4(pixelr4),.pixelr5(pixelr5),.pixelr6(pixelr6),.pixelr7(pixelr7),.pixelr8(pixelr8),.pixelr9(pixelr9),.done(done));
  filter fil(.clk(clk), .rst_n(rst_n), .en(en), .act(act), .sw_pixels1(pixelr1), .sw_pixels2(pixelr2), .sw_pixels3(pixelr3), .sw_pixels4(pixelr4), .sw_pixels5(pixelr5), .sw_pixels6(pixelr6), .sw_pixels7(pixelr7), .sw_pixels8(pixelr8), .sw_pixels9(pixelr9), .wr(wr), .cl_pixel(cl_pixel));
           
 endmodule