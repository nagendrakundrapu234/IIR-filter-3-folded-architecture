`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 14:51:58
// Design Name: 
// Module Name: multiplier_fixed
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


module multiplier_fixed(in1,in2,mulout);
input  [19:0] in1,in2;
output reg [19:0]mulout=0;
reg [40:0]temp;

always@(*)
begin
temp=in1*in2;
mulout=temp[29:10];
end
endmodule
