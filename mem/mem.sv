`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 11:19:46
// Design Name: 
// Module Name: mem
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


module mem(
    input [3:0] a,
    input [3:0] b,
    output [7:0] m,
    input clk
    );
    
parameter ROM_WIDTH = 8;
parameter ROM_ADDR_BITS = 8;

(* rom_style = "{distributed}" *)
reg [ROM_WIDTH - 1:0] rom_name [0: (2 ** ROM_ADDR_BITS)-1];
reg [ROM_WIDTH - 1:0] output_data;

logic [ROM_ADDR_BITS-1:0] address; 

initial 
$readmeh("m_table.txt", rom_name, 0, (2**ROM_ADDR_BITS)-1); 

assign address = {b, a}; 
always @(posedge clk) 
output_data <= rom_name[address]; 

assign m = output_data; 
 
endmodule
