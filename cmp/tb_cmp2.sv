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


module tb_cmp2();

logic [1:0] a, b;
logic       greater, less;

cmp2 DUT(.a(a), .b(b), .greater(greater), .less(less));

initial begin
    {a,b} = 4'b0000;    #10;
    repeat(15) begin
        {a,b} += 1; #10;
    end;
$finish;
end;

endmodule
