`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 15:06:15
// Design Name: 
// Module Name: delay_five
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


module delay_five(clk,in,out);
input clk;
input [19:0]in;
output reg [19:0]out=0;
reg [19:0]t1=0,t2=0,t3=0,t4=0;

always@(posedge clk)
begin
t1 <= in;
t2 <= t1;
t3 <= t2;
t4 <= t3;
out <= t4;
end
endmodule
