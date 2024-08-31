`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 14:49:57
// Design Name: 
// Module Name: iir_filter_threefold
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


module iir_filter_threefold(clk,x,y);
input clk;
input [19:0]x;
output reg [19:0]y=0;
wire [1:0]count;
reg [19:0]in1=0,in2=0,in3=0,in4=0;
wire [19:0]addout,mulout;
wire [19:0]f1,f2,f3,f4;

counter c1(clk,count);

adder_fixed af1(in1,in2,addout);
multiplier_fixed mf1(in3,in4,mulout);

delay_five d1(clk,addout,f1);
delay_five d2(clk,f1,f2);
delay_three d3(clk,mulout,f3);
delay_one d4(clk,f3,f4);

always@(posedge clk)
begin

if(count==0)
    begin
    in1=mulout;
    in2=addout;
    in3=20'b00000_01000_00000_00000;   //8
    in4=f2;
    end
else if(count==1)
    begin
    in1=x;
    in2=addout;
    in3=20'b00000_00100_00000_00000;   //4 
    in4=f1;
    end
else
    begin
    in1=f3;
    in2=f4;
    in3=20'b00000_00010_00000_00000;   //2 - 10 bit integer, 10 bit decimal
    in4=addout;
    y=addout;
    end
end

endmodule
