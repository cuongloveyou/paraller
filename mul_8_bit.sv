module mul_8_bit(
  input [7:0] in1, in2,
  output [15:0] mul
  );
  
  reg [15:0] c1, c2, c3, c4, c5, c6, c7, c8;
  wire [15:0] tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
      
  assign c1  = (in2[0]  == 1'b1)? {8'b00000000, in1 }            : {16{0}};
  assign c2  = (in2[1]  == 1'b1)? {7'b0000000 , in1, 1'b0      } : {16{0}};
  assign c3  = (in2[2]  == 1'b1)? {6'b000000  , in1, 2'b00     } : {16{0}};
  assign c4  = (in2[3]  == 1'b1)? {5'b00000   , in1, 3'b000    } : {16{0}};
  assign c5  = (in2[4]  == 1'b1)? {4'b0000    , in1, 4'b0000   } : {16{0}};
  assign c6  = (in2[5]  == 1'b1)? {3'b000     , in1, 5'b00000  } : {16{0}};
  assign c7  = (in2[6]  == 1'b1)? {2'b00      , in1, 6'b000000 } : {16{0}};
  assign c8  = (in2[7]  == 1'b1)? {1'b0       , in1, 7'b0000000} : {16{0}};
  
  add_16_bit a1(c1  , c2  , tmp1);
  add_16_bit a2(c3  , c4  , tmp2);
  add_16_bit a3(c5  , c6  , tmp3);
  add_16_bit a4(c7  , c8  , tmp4);
  add_16_bit a5(tmp1, tmp2, tmp5);
  add_16_bit a6(tmp3, tmp4, tmp6);
  add_16_bit a7(tmp5, tmp6, mul );
  
  
  
    
      
  endmodule
  
  
