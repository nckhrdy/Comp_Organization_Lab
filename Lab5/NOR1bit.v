`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2023 12:40:29 PM
// Design Name: 
// Module Name: NOR1bit
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


module NOR1bit(out1,in1,in2);

input in1; 
input in2; 

output out1;

wire sum,c_out,zero;

FA_str fa_inst(c_out,sum.in1,in2,1'b0);

or #1 or_inst(zero,sum,c_out);
not #1 bit_inst(out,zero);

endmodule
