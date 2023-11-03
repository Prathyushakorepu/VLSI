
//verilog code to design full subtractor behavioral model

`timescale 10ns/1ns

module fs(a,b,c,difference,barrow);
  
  input wire  a,b,c;
  output reg  difference,barrow;
  
  always@(a,b,c)
  begin
    case({a,b,c})
      
      3'b000:begin difference= 1'b0; barrow = 1'b0; end
      3'b001:begin difference= 1'b1; barrow = 1'b1; end
      3'b010:begin difference= 1'b1; barrow = 1'b1; end
      3'b011:begin difference= 1'b0; barrow = 1'b0; end
      3'b100:begin difference= 1'b1; barrow = 1'b0; end
      3'b101:begin difference= 1'b0; barrow = 1'b0; end
      3'b110:begin difference= 1'b0; barrow = 1'b0; end
      3'b111:begin difference= 1'b1; barrow = 1'b1; end

    endcase


  end
  
endmodule
