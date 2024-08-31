`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 15:08:35
// Design Name: 
// Module Name: delay_three
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


module delay_three(clk,in,out);
input clk;
input [19:0]in;
output reg [19:0]out=0;
reg [19:0]t1=0,t2=0;

always@(posedge clk)
begin
t1 <= in;
t2 <= t1;
out <= t2;
end
endmodule
