module fs_tb; 

  reg a,b,c; 

  wire diff,bo; 

  fs tb(a,b,c,diff,bo); 

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

    #5; 

    a=1; b=1; c=0; 

    #5; 

    a=1; b=1; c=1; 

    #5; 

  end 

  initial $monitor("Time=%0d,a=%b,b=%b,c=%b,diff=%b,borrow=%b",$time,a,b,c,diff,bo); 

endmodule 