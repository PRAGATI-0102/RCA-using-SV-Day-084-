`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 11:18:01 PM
// Design Name: 
// Module Name: RCA
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


module RCA#(parameter width = 4)(
    input logic [width-1:0] a,
    input logic [width-1:0] b,
    input logic cin,
    output logic [width-1:0] sum,
    output logic cout
    );

    wire [width-2:0] w;
    
    fa F1(a[0],b[0],cin,sum[0],w[0]);
    
    genvar i;
    generate
        for(i = 1; i < width-1; i++)
            begin
                fa F2(a[i],b[i],w[i-1],sum[i],w[i]);
            end    
    endgenerate            
    
    fa F3(a[width-1],b[width-1],w[width-2],sum[width-1],cout);
    
endmodule
