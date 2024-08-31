`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 14:54:01
// Design Name: 
// Module Name: adder_fixed
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


module adder_fixed(in1,in2,addout);
input  [19:0] in1,in2;
output reg [19:0] addout=0;

always@(*)
begin
addout=in1+in2;
end
endmodule