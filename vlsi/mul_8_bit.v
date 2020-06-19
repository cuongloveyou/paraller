module test_mul(
  input [7:0] in1, in2,
  output [15:0] mul
  );
  parameter _16b0 = 16'b0;
  parameter _8b0  = 8'b0;
  parameter _7b0  = 7'b0;
  parameter _6b0  = 6'b0;
  parameter _5b0  = 5'b0;
  parameter _4b0  = 4'b0;
  parameter _3b0  = 3'b0;
  parameter _2b0  = 2'b0;
  parameter _1b0  = 1'b0;
  
  wire [15:0] c1, c2, c3, c4, c5, c6, c7, c8;
  wire [15:0] tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, mul_16;
 // always @* begin 
      
    assign c1  = (in2[0]  == 1'b1)? {_8b0, in1}        : _16b0;
    assign c2  = (in2[1]  == 1'b1)? {_7b0, in1, _1b0 } : _16b0;
    assign c3  = (in2[2]  == 1'b1)? {_6b0, in1, _2b0 } : _16b0;
    assign c4  = (in2[3]  == 1'b1)? {_5b0, in1, _3b0 } : _16b0;
    assign c5  = (in2[4]  == 1'b1)? {_4b0, in1, _4b0 } : _16b0;
    assign c6  = (in2[5]  == 1'b1)? {_3b0, in1, _5b0 } : _16b0;
    assign c7  = (in2[6]  == 1'b1)? {_2b0, in1, _6b0 } : _16b0;
    assign c8  = (in2[7]  == 1'b1)? {_1b0, in1, _7b0 } : _16b0;

// end
  
  add_16_bit a1(c1  , c2  , tmp1);
  add_16_bit a2(c3  , c4  , tmp2);
  add_16_bit a3(c5  , c6  , tmp3);
  add_16_bit a4(c7  , c8  , tmp4);
  add_16_bit a5(tmp1, tmp2, tmp5);
  add_16_bit a6(tmp3, tmp4, tmp6);
  add_16_bit a7(tmp5, tmp6, mul);
   
  /*assign mul = mul_16[15:8];*/
  
    
      
  endmodule
