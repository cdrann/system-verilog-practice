`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2019 13:23:31
// Design Name: 
// Module Name: muxer16
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

module muxer16(
    input logic [15:0] in,
    input logic [3:0] sel,
    output logic q
    );
    
logic [3:0] tmp;
   
    muxer4 m0(.in(in[3:0]), .sel(sel[1:0]), .q(tmp[0]));
    muxer4 m1(.in(in[7:4]), .sel(sel[1:0]), .q(tmp[1]));
    muxer4 m2(.in(in[11:8]), .sel(sel[1:0]), .q(tmp[2]));
    muxer4 m3(.in(in[15:12]), .sel(sel[1:0]), .q(tmp[3]));

    muxer4 m4(.in(tmp), .sel(sel[3:2]), .q(q));

endmodule
