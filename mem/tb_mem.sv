`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 11:28:40
// Design Name: 
// Module Name: tb_mem
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


module tb_mem();

logic [3:0] a;
logic [3:0] b;
logic [7:0] m;
logic clk;

mem DUT(.clk(clk), .a(a), .b(b), .m(m)); 

always begin 
    clk = 1'b0; #10;
    clk = 1'b1; #10;
end

initial begin 
    {a, b} = 0; #10
    repeat(255) begin
        {a, b}++; #10;
    end
$finish;
end;
    
endmodule
