module fs(input a,b,c, output diff,bo); 

  wire x,p,q,r,s,t; 

  not n1(x,a); 

  xor x1(p,a,b); 

  xor x2(diff,p,c); 

  and a1(q,x,b); 

  and a2(r,x,c); 

  and a3(s,b,c); 

  or o1(t,q,r); 

  or o2(bo,t,s); 

endmodule

// Test Bench
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