`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 14:56:07
// Design Name: 
// Module Name: counter
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


module counter(clk,count);
input clk;
output reg [1:0]count=0;
reg [2:0]temp=1;

always@(posedge clk)
if(temp<4)
    begin
    temp <= temp+1;
    count <= temp-1;
    end
else
    begin
    temp <= 2;
    count <= 0;
    end

endmodule
