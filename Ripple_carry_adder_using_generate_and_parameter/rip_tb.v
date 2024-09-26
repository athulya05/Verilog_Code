module rip_tb; 

  reg[3:0] a,b; 

  reg c; 

  wire[3:0] sum; 

  wire[3:0] carry; 

  rip tb(a,b,c,sum,carry); 

  initial begin 

    a=1; b=2; c=0; 

    #5; 

    a=2; b=4; c=1; 

    #5; 

    a=4; b=3; c=1; 

    #5; 

    a=2; b=5; c=0; 

    #5 $finish; 

  end 

    always @(a or b  or c) 

    $display("time=%0t, a=%0d, b=%0d,c=%0d, Sum=%0d, Carry=%0d",$time, a,b,c, sum, carry[3]); 
endmodule 