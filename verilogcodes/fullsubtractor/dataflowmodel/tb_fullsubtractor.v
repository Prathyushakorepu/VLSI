
//verilog code to design full subtractor

`timescale 10ns/1ns

module fs(a,b,c,difference,barrow);
  
  input wire a,b,c;
  output wire difference,barrow;
  
  assign difference = a^b^c;
  assign barrow = (((~a)*b)+c*(~(a^b)));
  
endmodule
