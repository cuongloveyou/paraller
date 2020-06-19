module FA(a,b,cin,q,cout);
input a,b,cin;
output q,cout;
wire B = ~b;
assign q = a^B^cin;
assign cout = (a&B)|(cin&(a^B));
endmodule

module MUX(x0,x1,s,out);
input x0,x1,s;
output out;
assign
	out=(x0*(~s))|(x1*s);
endmodule

module Div(a,b,x,y,q);
input a;
input [7:0]b;
input [7:0]x;
output [7:0]y;
output q;

wire [8:0]c;
wire [8:0]d;
wire [7:0]e;

FA p0(a,b[0],1'b1, d[0], c[0]);
FA p1(x[0], b[1], c[0], d[1], c[1]);
FA p2(x[1], b[2], c[1], d[2], c[2]);
FA p3(x[2], b[3], c[2], d[3], c[3]);
FA p4(x[3], b[4], c[3], d[4], c[4]);
FA p5(x[4], b[5], c[4], d[5], c[5]);
FA p6(x[5], b[6], c[5], d[6], c[6]);
FA p7(x[6], b[7], c[6], d[7], c[7]);
FA p8(x[7], 1'b0, c[7], d[8], c[8]);
assign q = c[8];
MUX m0(a,d[0],c[8],e[0]);
MUX m1(x[0],d[1],c[8],e[1]);
MUX m2(x[1],d[2],c[8],e[2]);
MUX m3(x[2],d[3],c[8],e[3]);
MUX m4(x[3],d[4],c[8],e[4]);
MUX m5(x[4],d[5],c[8],e[5]);
MUX m6(x[5],d[6],c[8],e[6]);
MUX m7(x[6],d[7],c[8],e[7]);
assign y = e;
endmodule

module divider_16bit(clk, A ,B, Q0);
input clk;
input [15:0]A;
input [7:0]B;
output [7:0]Q0;

wire [127:0]X;
wire [15:0]Q;
reg [31:0]r1;
reg [31:0]r2;
reg [31:0]r3;
reg [15:0]r4;
always @(posedge clk)
begin
r1[31:28] <= Q[15:12];
r1[27:20] <= X[31:24];
r1[19:12] <= B[7:0];
r1[11:0]  <= A[11:0];

r2[31:28] <= r1[31:28];
r2[27:24] <= Q[11:8];
r2[23:16] <= X[63:56];
r2[15:8] <= r1[19:12];
r2[7:0] <= r1[7:0];

r3[31:24] <= r2[31:24];
r3[23:20] <= Q[7:4];
r3[19:12] <= X[95:88];
r3[11:4] <= r2[15:8];
r3[3:0] <= r2[3:0];

r4[15:4] <= r3[31:20];
r4[3:0] <= Q[3:0];
end
//tang 1
Div d1(A[15],B,8'd0,X[7:0],Q[15]);
//tang 2
Div d2(A[14],B,X[7:0],X[15:8],Q[14]);
//tang 3
Div d3(A[13],B,X[15:8],X[23:16],Q[13]);
//tang 4
Div d4(A[12],B,X[23:16],X[31:24],Q[12]);

//tang 5
Div d5(r1[11],r1[19:12],r1[27:20],X[39:32],Q[11]);
//tang 6
Div d6(r1[10],r1[19:12],X[39:32],X[47:40],Q[10]);
//tang 7
Div d7(r1[9],r1[19:12],X[47:40],X[55:48],Q[9]);
//tang 8
Div d8(r1[8],r1[19:12],X[55:48],X[63:56],Q[8]);

//tang 9
Div d9(r2[7],r2[15:8],r2[23:16],X[71:64],Q[7]);
//tang 10
Div d10(r2[6],r2[15:8],X[71:64],X[79:72],Q[6]);
//tang 11
Div d11(r2[5],r2[15:8],X[79:72],X[87:80],Q[5]);
//tang 12
Div d12(r2[4],r2[15:8],X[87:80],X[95:88],Q[4]);

//tang 13
Div d13(r3[3],r3[11:4],r3[19:12],X[103:96],Q[3]);
//tang 14
Div d14(r3[2],r3[11:4],X[103:96],X[111:104],Q[2]);
//tang 15
Div d15(r3[1],r3[11:4],X[111:104],X[119:112],Q[1]);
//tang 16
Div d16(r3[0],r3[11:4],X[119:112],X[127:120],Q[0]);
assign Q0 = r4[7:0];
endmodule
