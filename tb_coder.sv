`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2019 13:31:39
// Design Name: 
// Module Name: tb_coder
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

module tb_coder();

logic [7:0] in;
logic [2:0] code;
logic any;

coder DUT(
    .in(in),
    .code(code),
    .any(any)
);

initial begin 
    in = 8'b00000001; #10;
    repeat(7) begin 
        in *= 2; #10;

    end;
    $finish;
    
    end;
    
endmodule
