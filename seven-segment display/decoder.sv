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
    input [3:0] in,
    output logic [6:0] q
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
         4'b0000  : q <= 7'b1111110; //0
         4'b0001  : q <= 7'b0110000;
         4'b0010  : q <= 7'b1101101;
         4'b0011  : q <= 7'b1111001;
         4'b0100  : q <= 7'b0110011;
         4'b0101  : q <= 7'b1011011;
         4'b0110  : q <= 7'b1011111;
         4'b0111  : q <= 7'b1110000;
         4'b1000  : q <= 7'b1111111;
         4'b1001  : q <= 7'b1111011;
         4'b1010  : q <= 7'b1110111; //a
         4'b1011  : q <= 7'b0011111;
         4'b1100  : q <= 7'b1001110;
         4'b1101  : q <= 7'b0111101;
         4'b1110  : q <= 7'b1001111;
         4'b1111  : q <= 7'b1000111;
         default : q <= 7'b0000000;
         endcase
    
endmodule
