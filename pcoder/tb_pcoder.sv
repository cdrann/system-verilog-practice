`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2019 12:52:34
// Design Name: 
// Module Name: tb_muxer8
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


module tb_pcoder();

logic [7:0] in;
logic [2:0] code;

pcoder DUT(.in(in), .code(code));

initial begin 
    in = 8'b00000000; #10;
    repeat (255) begin
        in += 1;  #10;
    end
$finish;
end;
   
endmodule
