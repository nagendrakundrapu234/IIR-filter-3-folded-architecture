`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 15:09:24
// Design Name: 
// Module Name: delay_one
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


module delay_one(clk,in,out);
input clk;
input [19:0]in;
output reg [19:0]out=0;

always@(posedge clk)
begin
out <= in;
end
endmodule
