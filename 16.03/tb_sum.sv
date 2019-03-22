`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2019 11:03:22
// Design Name: 
// Module Name: tb_sum
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


module tb_sum();

logic [63:0] a;
logic [63:0] b;
logic cin;
logic cout;
logic [63:0] s;

adder64 DUT(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
    {cin, b, a} = 64'b0000000000000000000000000000000000000000000000000000000000000000000000000; #10;
    repeat (511) begin
        {cin, b, a} += 1; #10;
    end
    
$finish;
end;

endmodule
