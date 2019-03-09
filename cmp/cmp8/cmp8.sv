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

module cmp8 (
    input [7:0] a,
    input [7:0] b,
    output GREATER,
    output LESS
    );
    
    logic [6:0] g, l;
    
    cmp2 c0(.a(a[1:0]), .b(b[1:0]), .greater(g[0]), .less(l[0]));
    
    genvar i; 
    generate 
        for(i = 0; i < 6; i = i + 1) 
            begin:label
                cmp2 c1(.a({a[i+2], g[i]}), .b({b[i+2], l[i]}), .greater(g[i+1]), .less(l[i+1]));
            end
    endgenerate
        
    assign GREATER  = g[6];
    assign LESS     = l[6];

endmodule

