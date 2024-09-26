module rca_tb; 

  reg[7:0] a; 

  reg[7:0] b; 

  reg cin; 

  wire [7:0] sum; 

  wire cout; 

  rca tb(a,b,cin,sum,cout); 

  initial begin 

    a=2; b=3; cin=0; 

    #5; 

    a=2; b=4; cin=1; 

    #5; 

    a=5; b=5; cin=0; 

    #5; 

    a=9; b=1; cin=1; 

    #5; 

    a=3; b=4; cin=0; 

    #5; 

    a=7; b=2; cin=1; 

    #5 

    a=8; b=3; cin=0; 

    #5; 

    a=2; b=2; cin=1; 

    #5 $finish; 

  end 

  always @(a or b  or cin) 

    $display("time=%0t, a=%0d, b=%0d,c=%0d, Sum=%d, Carry=%d",$time, a,b,cin, sum, cout); 

  initial 

  begin 

    $dumpfile("dump.vcd"); 

    $dumpvars(1); 

  end  

endmodule