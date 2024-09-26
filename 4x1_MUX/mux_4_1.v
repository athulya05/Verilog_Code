module mux_4_1(input i0,i1,i2,i3,s0,s1,output out); 

  wire s0bar,s1bar,p,q,r,s; 

  not n1(s0bar,s0); 

  not n2(s1bar,s1); 

  and a1(p,i0,s0bar,s1bar); 

  and a2(q,i1,s1bar,s0); 

  and a3(r,i2,s1,s0bar); 

  and a4(s,i3,s1,s0); 

  or o1(out,p,q,r,s); 

endmodule 