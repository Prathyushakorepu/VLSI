
//testbench for full adder behavioral model
`timescale 10ns/1ns

module tb_hs();
  
  reg  a,b;
  wire  sum,carry;
  
  hs dut(.a(a),.b(b),.sum(sum),.carry(carry));
  
  initial
    begin
      $monitor("simtime=%g,a=%b,b=%b,sum =%b,carry =%b",$time,a,b,sum,carry);
    end
  
  initial
    begin
      
      a=0; b=0; 
      #5 a=0; b=1; 
      #5 a=1; b=0; 
      #5 a=1; b=1;
      
      end
  
  initial
    begin
  $dumpfile("dump.vcd"); 
  $dumpvars;
    end
  
  initial
    begin
      #25;  $finish;
    end
endmodule
