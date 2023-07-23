`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 23.07.2023 12:45:51
// Design Name: 
// Module Name: tb_4x1_mux
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


module tb_4x1_mux;
    reg s0, s1, d0, d1, d2, d3;
    wire y;
    
    mux_4x1 MUX1(.s0(s0),
                 .s1(s1),
                 .d0(d0),
                 .d1(d1),
                 .d2(d2),
                 .d3(d3),
                 .y(y)
                 );
    
    initial begin
        d0 = 1; d1 = 0; d2 = 1; d3 = 1;
        #5 s0 = 0; s1 = 0;
        #5 s0 = 0; s1 = 1;
        #5 s0 = 1; s1 = 0;
        #5 s0 = 1; s1 = 1;
        #5 $stop;  
    end 
    
endmodule
