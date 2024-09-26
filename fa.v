module fa(a,b,c,sum,carry); 

  input a,b,c; 

  output sum,carry; 

  wire x1,x2,x3,x4,x5; 

  xor a1(x1,a,b); 

  xor a2(sum,x1,c); 

  and a3(x2,a,b); v

  and a4(x3,b,c); 

  and a5(x4,a,c); 

  or a6(x5,x2,x3); 

  or a7(carry,x5,x4); 

endmodule 