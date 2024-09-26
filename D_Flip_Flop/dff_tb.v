module dff_tb; 

  reg din; 

  reg clk,clear,enable; 

  wire  q; 

   

  dff tb(clk,clear,enable,din,q); 

  initial begin 

    din=0; 

    clk=0; 

    clear=0; 

    enable=1; 

  end 

   

  always #3 clk =~clk; 

  always #5 din =~din; 

  initial #50 $stop; 

   

    always @(din or clk) 

      $display("Time = %0t, Clk=%0b, D=%0b , Q=%0b", $time,clk,din,q); 

 

    initial 

  begin 

    $dumpfile("dump.vcd"); 

    $dumpvars(1); 

  end  

endmodule 
