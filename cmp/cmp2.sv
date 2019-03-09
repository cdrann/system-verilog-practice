`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2019 11:02:48
// Design Name: 
// Module Name: cmp8
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


module cmp2 (
    input [1:0] a,
    input [1:0] b,
    output greater,
    output less
    );
    
    assign greater = a[1] & !b[1]
                | !a[1] & !b[1] & a[0] & !b[0]
                |  a[1] &  b[1] & a[0] & !b[0];
                
    assign less   = !a[1] & b[1]
                | !a[1] & !b[1] & !a[0] & b[0]
                |  a[1] &  b[1] & !a[0] & b[0];
                
endmodule

