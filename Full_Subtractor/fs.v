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
