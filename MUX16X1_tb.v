`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2024 00:56:22
// Design Name: 
// Module Name: MUX16X1_tb
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


module MUX16to1_tb;
  reg [15:0] A; reg [3:0] S; wire F;
  MUX16to1 M(.out(F),.in(A),.sel(S));
  initial 
    begin
      $dumpfile("MUX16to1.vcd");
      $dumpvars(0,MUX16to1_tb);
      $monitor($time,"A=%h,S=%h,F=%b",A,S,F);
      #5 A=16'h3f0A; S=4'h0;
      #5 S=4'h1;
      #5 S=4'h6;
      #5 S=4'hc;
      #5 $finish;
    end
endmodule

