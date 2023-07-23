`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 23.07.2023 12:31:02
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(input s0,
               input s1,
               input d0,
               input d1,
               input d2,
               input d3,
               output y);
               
               assign y = (~s0 & ~s1 & d0) | (~s0 & s1 & d1) | (s0 & ~s1 & d2) | (s0 & s1 & d3);
endmodule
