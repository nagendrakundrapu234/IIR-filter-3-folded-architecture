`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 15:20:12
// Design Name: 
// Module Name: iir_filter_tb
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


module iir_filter_tb();
reg clk;
reg [19:0]x;
wire [19:0]y;

iir_filter_threefold ift1(clk,x,y);
//iir_filter_new ift1(clk,x,y);

initial clk=0;
always #5 clk=~clk;

initial
begin
x=20'b00000_00000_10000_00000; 
#300 $stop;
end
endmodule
