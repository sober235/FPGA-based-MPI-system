`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/11 15:46:42
// Design Name: 
// Module Name: dacdata_tri
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


module dacdata_tri(
input clk,
input [7:0] sine, 
output [7:0] dadata
);

reg [7:0] da_datao; //定义中间变量

assign   dadata = da_datao; 
 always @(posedge clk)
   begin 
      if(sine[7] == 1'b1)
      da_datao <= sine[7:0] + 128;
      else 
      da_datao <= sine[7:0] + 128;
   end 
        
endmodule
