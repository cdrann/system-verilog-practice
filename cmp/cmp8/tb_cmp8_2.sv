`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2019 11:07:08
// Design Name: 
// Module Name: tb_cmp
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


module tb_cmp();

logic [7:0] a, b;
logic       greater, less;

cmp8 DUT(.a(a), .b(b), .GREATER(greater), .LESS(less));

initial begin
    {a,b} = 16'b0000000000000000;    #10;
    repeat(65535) begin
        {a,b} += 1; #10;
    end;
$finish;
end;

endmodule
