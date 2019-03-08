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


module pcoder(
    input logic [7:0] in,
    output logic [2:0] code
    );

always_comb
    casex(in)
        8'b1xxxxxxx : code <= 3'b111;
        8'b1xxxxxxx : code <= 3'b110;
        8'b1xxxxxxx : code <= 3'b101;
        8'b1xxxxxxx : code <= 3'b100;
        8'b1xxxxxxx : code <= 3'b011;
        8'b1xxxxxxx : code <= 3'b010;
        8'b1xxxxxxx : code <= 3'b001;
        8'b1xxxxxxx : code <= 3'b000;
        default     : code <= 3'b000 
                
    endcase 
  
endmodule
