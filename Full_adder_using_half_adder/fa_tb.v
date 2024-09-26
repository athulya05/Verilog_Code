module fa_tb; 

  reg a; 

  reg b; 

  reg c; 

  wire sum,carry; 

  fa_ha tb(a,b,c,sum,carry); 

   

  initial begin 

    a=0; b=0; c=0; 

    #5; 

    a=0; b=0; c=1; 

    #5; 

    a=0; b=1; c=0; 

    #5; 

    a=0; b=1; c=1; 

    #5; 

    a=1; b=0; c=0; 

    #5; 

    a=1; b=0; c=1; 

    #5 

    a=1; b=1; c=0; 

    #5; 

    a=1; b=1; c=1; 

    #5 $finish; 

  end 

    always @(a or b  or c) 

    $display("time=%0t, a=%b, b=%0b,c=%0b, Sum=%d, Carry=%d",$time, a,b,c,sum, carry); 

  initial 

  begin 

    $dumpfile("dump.vcd"); 

    $dumpvars(1); 

  end  

endmodule 