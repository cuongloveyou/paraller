module tb1_sub();
  reg [7:0] a, b;
  wire [15:0] sub;
  
  //sas dut(.a(a), .b(b), .out_sas(sub) );
 mul_8_bit dut(.in1(a), .in2(b), .mul(sub));
  //add_16_bit dut(.in1(a), .in2(b), .s(sub));
  
  initial begin
   // #10 a = 16'd55; b = 16'd55;
    //#10 a = 16'd5; b = 16'd5;
    #10 a = 8'd55; b = 8'd55;
    //#10 $display(" %d - %d = %d -- %b",a, b, sub[15:8]);
    #10 a = 8'd2; b = 8'd4;
    #10 a = 8'd255; b = 8'd55; 
   // #10 $display(" %d - %d = %d -- %b",a, b, sub);
    //#10 a = 8'b00000010; b = 8'b00000101;
   // #10 $display(" %d - %d = %d -- %b",a, b, sub);
   // #10 a = 8'b00110011; b = 8'b00011100; 
   // #10 $display(" %d - %d = %d -- %b",a, b, sub);
    
  end
  
endmodule
  
  /*reg[15:0] in1, in2, in3, in4, in5;
  wire [19:0] out;
  
  add_5_reg_16_bit dut(.in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .out(out));
  
  initial begin
    #10 in1 = 16'd12; in2 = 16'd13; in3 = 16'd14; in4 = 16'd15; in5 = 16'd16;
    #10 in1 = 16'd212; in2 = 16'd213; in3 = 16'd114; in4 = 16'd115; in5 = 16'd216;
    
  end
endmodule
*/
  
  /*reg [15:0] in1, in2;
  wire [15:0] out;
  
  add_16_bit dut(.in1(in1), .in2(in2), .s(out));
  
  initial begin
    #10 in1 = 16'd12; in2 = 16'd18;
  end
  
endmodule 
*/
  
  
  
  
  /*
  reg a, b, c, m;
  wire cout, sum;
  
  madd dut(.a(a), .b(b), .c(c), .m(m), .sum(sum), .cout(cout));
  
  
  initial begin
    #10 a = 1; m = 0; b = 0; c = 0;
    #10 a = 1; m = 1; b = 0; c = 0;
    #10 a = 0; m = 0; b = 0; c = 0;
    #10 a = 0; m = 1; b = 0; c = 0;
  end
  */
  /*
  reg clk = 0, d, enable;
  wire q;
  
  D_flip_flop dut(.clk(clk), .enable(enable), .d(d), .q(q));
  
  always #5 clk = ~clk;
  
  initial begin
    #20 enable = 1'b0; d = 1'b0;
    #20 enable = 1'b0; d = 1'b1;
    #20 enable = 1'b0; d = 1'b0;
    #20 enable = 1'b0; d = 1'b1;
    #20 enable = 1'b1; d = 1'b0;
    #20 enable = 1'b1; d = 1'b1;
    #20 enable = 1'b1; d = 1'b0;
    #20 enable = 1'b1; d = 1'b1;
    
  end
  */
  
  /*
  reg [7:0] in1, in2;
  wire [15:0] s;
  
  mul_8_bit dut(.in1(in1), .in2(in2), .mul(s));
  
  initial begin
    #10 in1 = 8'd12; in2 = 8'd4;
    #10 in1 = 8'd120; in2 = 8'd120;
    #10 in1 = 8'd100; in2 = 8'd15;
    #10 in1 = 8'd128; in2 = 8'd128;
    
  end
  */
  
  //reg [7:0] sub;
  //reg cin;
 // wire [7:0] abs_sub;
 /*
  reg [7:0] a, b;
  reg  cin;
  wire [7:0] sub;
  wire cout;
  */
  
  //abs dut(.sub(sub), .cin(cin), .abs_sub(abs_sub));
  
  
  //sub_8_bit dut(.a(a), .b(b), .cin(cin), .sub(sub), .out(cout));
  
  //sub_1_bit dut(.in1(a), .in2(b), .cin(cin), .sub(sub), .cout(cout));
  
 // initial begin
   // #10 sub = 8'b11111101; cin = 1'b1;
   // #10 $display(" %d -- %d : %d -", sub, cin, abs_sub);
    /*
    #10 a = 8'b00001010; b = 8'b00001000; cin = 0;
    #10 $display(" %d - %d = %d -- %b",a, b, sub, cout);
    #10 a = 8'b00000010; b = 8'b00000101; cin = 0;
    #10 $display(" %d - %d = %d -- %b",a, b, sub, cout);
    #10 a = 8'b00110011; b = 8'b00011100; cin = 0;
    #10 $display(" %d - %d = %d -- %b",a, b, sub, cout);
    */
    
    /*
    #10 a = 0; b = 0; cin = 0;
    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    */
    
  //end
  
  
//endmodule
