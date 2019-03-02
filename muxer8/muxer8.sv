`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2019 12:39:33
// Design Name: 
// Module Name: muxer8
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


module muxer8(
    input logic [7:0] in,
    input logic [2:0] sel,
    output logic q
    );
    
    /* assign q = !sel[0] & !sel[1] & !sel[2] & in[0]
             | !sel[0] & !sel[1] &  sel[2] & in[1]
             | !sel[0] &  sel[1] & !sel[2] & in[5]
             | !sel[0] &  sel[1] &  sel[2] & in[6]
             |  sel[0] & !sel[1] & !sel[2] & in[4]
             |  sel[0] & !sel[1] &  sel[2] & in[5]
             |  sel[0] &  sel[1] & !sel[2] & in[6]
             |  sel[0] &  sel[1] &  sel[2] & in[7];
        */
        
        always_comb
            case(sel)
                3'b000 : q <= in[0]; 
                3'b001 : q <= in[1]; 
                3'b010 : q <= in[2]; 
                3'b011 : q <= in[3]; 
                3'b100 : q <= in[4]; 
                3'b101 : q <= in[5]; 
                3'b110 : q <= in[6]; 
                3'b111 : q <= in[7]; 
            endcase 
  
endmodule
