//////////////////////////////////////////////////////////////////////////////////
// Design Name: BCD to Gray code converter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module BCD_Gray(A,B,C,D,G);
    input  wire A;
    input  wire B;
    input  wire C;
    input  wire D;
    output wire [3:0] G;
    
    
    assign G[3] = D;
    assign G[2] = D ^ C;
    assign G[1] = C ^ B;
    assign G[0] = B ^ A;
    
endmodule
