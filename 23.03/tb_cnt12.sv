`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2019 12:03:08
// Design Name: 
// Module Name: tb_cnt12
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

module tb_cnt12(); 
logic clk; 
logic [3:0] q; 

cnt12 DUT(.clk(clk), .q(q)); 

parameter PERIOD = 10ns; 

initial begin 
    clk = 1'b0; 
    #(PERIOD/2); 
    forever 
    #(PERIOD/2) clk = ~clk; 
end 

initial begin 
    #300; 
$finish; 
end; 

endmodule
