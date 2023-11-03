
//testbench for full adder 
`timescale 10ns/1ns

module tb_fa();
  
  reg a,b,c;
  wire sum,carry;
  
  fa dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  
  initial
    begin
      $monitor("simtime=%g,a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,c,sum,carry);
    end
  
  initial
    begin
      
      a=0; b=0; c=0;
      #5 a=0; b=0; c=1;
      #5 a=0; b=1; c=0;
      #5 a=0; b=1; c=1;
      #5 a=1; b=0; c=0;
      #5 a=1; b=0; c=1;
      #5 a=1; b=1; c=0;
      #5 a=1; b=1; c=1;
      
      end
  
  initial
    begin
  $dumpfile("dump.vcd"); 
  $dumpvars;
    end
  
  initial
    begin
      #50;  $finish;
    end
endmodule
