
//verilog code to design half adder behavioral model

`timescale 10ns/1ns

module hs(a,b,sum,carry);
  
  input wire  a,b;
  output reg  sum,carry;
  
  always@(a,b)
  begin
    case({a,b})
      
      2'b00:begin sum = 1'b0; carry = 1'b0; end
      2'b01:begin sum = 1'b1; carry = 1'b0; end
      2'b10:begin sum = 1'b1; carry = 1'b0; end
      2'b11:begin sum = 1'b0; carry = 1'b1; end
      
    endcase


  end
  
endmodule
