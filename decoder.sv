`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2019 12:45:42
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [2:0] in,
    output logic [7:0] q
    );
    
    /* assign q[0] = !in[2] & !in[1] & !in[0];
    assign q[1] = !in[2] & !in[1] & in[0];
    assign q[2] = !in[2] & in[1] & !in[0];
    assign q[3] = !in[2] & in[1] & in[0];
    assign q[4] = in[2] & !in[1] & !in[0];
    assign q[5] = in[2] & !in[1] & in[0];
    assign q[6] = in[2] & in[1] & !in[0];
    assign q[7] = in[2] & in[1] & in[0]; */
    
    always_comb
        case(in)
         3'b000  : q <= 8'b00000001;
         3'b001  : q <= 8'b00000010;
         3'b010  : q <= 8'b00000100;
         3'b011  : q <= 8'b00001000;
         3'b100  : q <= 8'b00010000;
         3'b101  : q <= 8'b00100000;
         3'b110  : q <= 8'b01000000;
         3'b111  : q <= 8'b10000000;
         
         default : q <= 8'b00000000;
         endcase
    
endmodule
