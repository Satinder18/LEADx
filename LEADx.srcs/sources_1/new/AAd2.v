`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 12:19:23 PM
// Design Name: 
// Module Name: AAd2
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


module AAd2(
    input Ai,
    input Ai1,
    input Bi,
    input Bi1,
    input cin,
    output Si1,
    output Si
    );
    
 LUT6_2 #(
         .INIT(64'h9860F9E6E080FEF8) // Specify LUT Contents
      ) LUT6_2_inst (
         .O6(Si), // 1-bit LUT6 output
         .O5(Si1), // 1-bit lower LUT5 output
         .I0(cin), // 1-bit LUT input
         .I1(Bi), // 1-bit LUT input
         .I2(Bi1), // 1-bit LUT input
         .I3(Ai), // 1-bit LUT input
         .I4(Ai1), // 1-bit LUT input
         .I5(1)  // 1-bit LUT input (fast MUX select only available to O6 output)
      );

endmodule
