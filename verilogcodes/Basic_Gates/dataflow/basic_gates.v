`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2023 12:18:16 PM
// Design Name: 
// Module Name: gates
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


module gates(input a,b,output y0,y1,y2,y3,y4,y5,y6,y7);

assign y0 = (a);                    //BUF gate
assign y1 = (a & b);                //AND gate
assign y2 = (a | b);                //OR gate
assign y3 = (a ^ b);                //XOR gate

assign y4 = (~ b);                  //NOT gate
assign y5 = (~(a & b));             //NAND gate
assign y6 = (~(a | b));             //NOR gate
assign y7 = (~(a ^ b));             //XNOR gate
    
endmodule
