`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 08:43:08 PM
// Design Name: 
// Module Name: Leadx
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


module Leadx(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output Cout,
    output [15:0] Sum
    );
    wire C1,C2,C3,C4,C5,C6,C7;
    AAd2 t1(A[0],A[1],B[0],B[1],Cin,Sum[1],Sum[0]);
    AAd2 t2(A[2],A[3],B[2],B[3],A[1],Sum[3],Sum[2]);
    AAd2 t3(A[4],A[5],B[4],B[5],A[3],Sum[5],Sum[4]);
    
    AAd1 t4(A[5],B[6],B[7],A[6],A[7],Sum[6],Sum[7]);
    
    Addm t5(A[8],B[8],A[7],A[6],B[7],B[6],C1,Sum[8]);
    
    Add t6(A[9],B[9],C1,C2,Sum[9]);
    Add t7(A[10],B[10],C2,C3,Sum[10]);
    Add t8(A[11],B[11],C3,C4,Sum[11]);
    Add t9(A[12],B[12],C4,C5,Sum[12]);
    Add t10(A[13],B[13],C5,C6,Sum[13]);
    Add t11(A[14],B[14],C6,C7,Sum[14]);
    Add t12(A[15],B[15],C7,Cout,Sum[15]);
    
endmodule
