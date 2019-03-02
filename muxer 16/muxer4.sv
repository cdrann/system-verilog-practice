`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2019 13:42:04
// Design Name: 
// Module Name: muxer4
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


module muxer4(
    input logic [3:0] in,
    input logic [1:0] sel,
    output logic q
);
    
    always_comb
            case(sel)
                2'b00 : q <= in[0]; 
                2'b01 : q <= in[1]; 
                2'b10 : q <= in[2]; 
                2'b11 : q <= in[3]; 
            endcase 

endmodule
