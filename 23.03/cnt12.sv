`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2019 12:01:44
// Design Name: 
// Module Name: cnt12
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

module cnt12( 
input clk, 
output logic [3:0] q = 4'b0000 
); 

always @(posedge clk) begin 
if (q == 12) 
    q <= 4'b0000; 
else 
    q <= q + 1; 

end 

endmodule
