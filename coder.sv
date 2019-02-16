`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2019 13:31:07
// Design Name: 
// Module Name: coder
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


module coder(
    input [7:0] in,
    output logic [2:0] code,
    output any
    );
    
    always_comb
        case(in)
            8'b00000001 : code <= 3'b000;
            8'b00000010 : code <= 3'b001;
            8'b00000100 : code <= 3'b010;
            8'b00001000 : code <= 3'b011;
            8'b00010000 : code <= 3'b100;
            8'b00100000 : code <= 3'b101;
            8'b01000000 : code <= 3'b110;
            8'b10000000 : code <= 3'b111;
            //default     : code <= 3'b000;
         endcase
      assign any = in[7] |in[6] |in[5] |in[4] |in[3] |in[2] |in[1] |in[0];
endmodule
