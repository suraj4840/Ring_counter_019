`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2023 04:58:09 PM
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_t();
reg clk,rst;
wire [3:0] count;

ring__counter dut(clk,rst,count);

initial begin
clk=1'b0;
rst=1'b1;
#10
rst=1'b0;
#200
$finish;
end

always #5 clk=~clk;


endmodule
