`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2024 00:52:49
// Design Name: 
// Module Name: MUX16X1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX16to1(in,sel,out);
  input [15:0] in;
  input [3:0] sel;
  output out;
  wire [3:0] w;
  MUX4to1 m0((in[3:0]),(sel[1:0]),(w[0]));
  MUX4to1 m1((in[7:4]),(sel[1:0]),(w[1]));
  MUX4to1 m2((in[11:8]),(sel[1:0]),(w[2]));
  MUX4to1 m3((in[15:12]),(sel[1:0]),(w[3]));
  MUX4to1 m4(w,sel[3:2],out);
endmodule
module MUX4to1(in,sel,out);
  input [3:0] in;
  input [1:0] sel;
  output out; 
  wire [1:0]t;
  //assign out=in[sel];
  MUX2to1 m5(in[1:0],sel[0],t[0]);
  MUX2to1 m6(in[3:2],sel[0],t[1]);
  MUX2to1 m7(t,sel[1],out);
  
endmodule
module MUX2to1(in,sel,out);
  input [1:0] in;
  input sel;
  output out;
  wire x1,x2,x3;
  //assign out=in[sel];
  and a1(x1,sel,in[1]);
  not a2(x3,sel);
  and a3(x2,x3,in[0]);
  or a4(out,x1,x2);
endmodule

