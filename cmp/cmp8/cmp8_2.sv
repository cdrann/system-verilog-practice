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
    
    /* cmp2 c0(.a(a[1:0]), .b(b[1:0]), .greater(g[0]), .less(l[0]));
    
    genvar i; 
    generate 
        for(i = 0; i < 6; i = i + 1) 
            begin:label
                cmp2 c1(.a({a[i+2], g[i]}), .b({b[i+2], l[i]}), .greater(g[i+1]), .less(l[i+1]));
            end
    endgenerate */
    
    cmp2 c0(.a(a[1:0]), .b(b[1:0]), .greater(g[0]), .less(l[0]));
    cmp2 c1(.a(a[3:2]), .b(b[3:2]), .greater(g[1]), .less(l[1]));
    cmp2 c2(.a(a[5:4]), .b(b[5:4]), .greater(g[2]), .less(l[2]));
    cmp2 c3(.a(a[7:6]), .b(b[7:6]), .greater(g[3]), .less(l[3]));
    
    cmp2 c4(.a(g[1:0]), .b(l[1:0]), .greater(g[4]), .less(l[4]));
    cmp2 c5(.a(g[3:2]), .b(l[3:2]), .greater(g[5]), .less(l[5]));
    cmp2 c6(.a(g[5:4]), .b(l[5:4]), .greater(g[6]), .less(l[6]));
        
    assign GREATER  = g[6];
    assign LESS     = l[6];

endmodule
