`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2019 13:25:33
// Design Name: 
// Module Name: tb_muxer16
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


module tb_muxer16();

logic [15:0] in;
logic [3:0] sel;
logic       q;
logic [3:0] tmp;



muxer16 DUT(.in(in), .sel(sel), .q(q));

initial begin 
    sel = 4'b0000;    in = 16'b0000000000000001;   #10;
    sel = 4'b0000;    in = 16'b1111111111111110;   #10;
    
    sel = 4'b0001;    in = 16'b0000000000000010;   #10;
    sel = 4'b0001;    in = 16'b1111111111111101;   #10;
    
    sel = 4'b0010;    in = 16'b0000000000000100;   #10;
    sel = 4'b0010;    in = 16'b1111111111111011;   #10;
    
    sel = 4'b0100;    in = 16'b0000000000000001;   #10;
    sel = 4'b0100;    in = 16'b0000000000000001;   #10;
    
     sel = 4'b1000;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1001;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1010;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1011;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1100;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1101;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1110;    in = 16'b0000000000000001;   #10;
     
     sel = 4'b1111;    in = 16'b0000000000000001;   #10;
    $finish;
    end;
   
endmodule
