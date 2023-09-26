`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2023 04:53:40 PM
// Design Name: 
// Module Name: ring__counter
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


module ring__counter(clk,rst,count);
input clk,rst;
output reg [3:0] count=4'b1000;



always @(posedge clk,posedge rst)
begin
 if(rst)
 count<=4'b1000;
 else
  count<= {count[0],count[3:1]};
  end
  

endmodule
