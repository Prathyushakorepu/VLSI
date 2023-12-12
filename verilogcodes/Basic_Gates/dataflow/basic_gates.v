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


module gates(input a,
             input b,
             output BUF_gate,
             output AND_gate,
             output  OR_gate,
             output XOR_gate,
             output NOT_gate,
             output NAND_gate,
             output NOR_gate,
             output XNOR_gate);

assign BUF_gate = (a);                    //BUF gate
assign AND_gate = (a & b);                //AND gate
assign OR_gate  = (a | b);                //OR gate
assign XOR_gate = (a ^ b);                //XOR gate

assign NOT_gate  = (~ b);                  //NOT gate
assign NAND_gate = (~(a & b));             //NAND gate
assign NOR_gate  = (~(a | b));             //NOR gate
assign XNOR_gate = (~(a ^ b));             //XNOR gate 
    
endmodule
