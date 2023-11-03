//verilog code to design full adder 

`timescale 10ns/1ns

module fa(a,b,c,sum,carry);
  
  input wire a,b,c;
  output wire sum,carry;
  
  assign sum = a^b^c;
  assign carry = ((a*b)+c*(a^b));
  
endmodule
