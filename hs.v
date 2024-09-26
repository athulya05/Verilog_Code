
module hs(a,b,diff,bo); 

  input a,b; 

  output diff, bo; 

  assign diff = a^b; 

  assign bo = ~a&b; 

endmodule 

// Testbench

module hs_tb; 

  reg a; 

  reg b; 

  wire diff,bo; 

  hs tb(a,b,diff,bo); 

  initial begin 

    a=0; b=0;  

    #5; 

    a=0; b=1;  

    #5; 

    a=1; b=0;  

    #5; 

    a=1; b=1;  

    #5 $finish; 

  end 

    always @(a or b ) 

      $display("time=%0t, a=%b, b=%0b, Diff=%d, Borrow=%d",$time, a,b, diff, bo); 

  initial 

  begin 

    $dumpfile("dump.vcd"); 

    $dumpvars(1); 

  end  

endmodule 

