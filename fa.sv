`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 11:15:08 PM
// Design Name: 
// Module Name: fa
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


module fa(
    input logic a,
    input logic b,
    input logic cin,
    output logic sum,
    output logic cout);
    
    wire w1,w2,w3;    
    
    ha H1(a,b,w1,w2);
    ha H2(cin,w1, sum, w3);
    
    assign cout = w2 | w3;
    
endmodule
