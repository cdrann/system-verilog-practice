`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2019 11:43:31
// Design Name: 
// Module Name: adder
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

module adder4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s, 
    output cout, 
    output pg, gg
    );
    

//    assign s = a ^ b ^ cin;
//    assign cout  = (a & b) | ((a ^ b) & cin);
   
    
    logic [4:0] c; 

    assign c[0] = cin; 
    genvar i; 
    generate 
    for (i = 0; i < 4; i = i + 1) 
    begin: add 
        assign s[i] = a[i] ^ b[i] ^ c[i]; 
        assign c[i+1] = (a[i] & b[i]) | ((a[i] ^ b[i]) & c[i]); 
    end 
    endgenerate 

    assign cout = c[4]; 
endmodule

module adder16(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] s,
    output cout, 
    output pg, gg
    );
    
    logic [3:0] c;
    logic [3:0] p, g;
    assign c[0] = cin;
    
   genvar i;
   generate
   for(i = 0; i < 4; i = i+ 1)
   begin: add
   adder4 name0(.a(a[4*i+3:4*i]), .b(b[4*i+3:4*i]), .cin(c[i]), .s(s[4*i+3:4*i]), .cout(), .pg(p[i]), .gg(g[i]));  
   end
   endgenerate
    
endmodule 

module adder64(
    input [63:0] a,
    input [63:0] b,
    input cin,
    output [63:0] s,
    output cout, 
    output pg, gg
    );
    
    logic [15:0] c;
    logic [15:0] p, g;
    assign c[0] = cin;
    
   genvar i;
   generate
   for(i = 0; i < 16; i = i+ 1)
   begin: add
   adder16 name(.a(a[16*i+15:16*i]), .b(b[16*i+15:16*i]), .cin(c[i]), .s(s[16*i+15:16*i]), .cout(), .pg(p[i]), .gg(g[i]));  
   end
   endgenerate
    
endmodule 