`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 11:22:33 PM
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();

    localparam width = 4;
    
    logic [width-1:0] a;
    logic [width-1:0] b;
    logic cin;
    
    logic [width-1:0] sum;
    logic cout;
    
    RCA dut(.*);
    
    
    initial 
    begin
    for(int i=0;i<16;i=i+1) 
    begin
          a=$urandom_range(4'b0000,4'b1111);
          b=$urandom_range(4'b0000,4'b1111);
          cin = $random();
          #10;
    end
    $finish();
    end
    
endmodule
