module mux_2_1(input s,i0,i1,output out); 

  wire x,y,z; 

  not n1(x,s); 

  and a1(y,x,i0); 

  and a2(z,s,i1); 

  or o1(out,y,z); 

endmodule 

 

module mux_4_1(input i0,i1,i2,i3,s0,s1,output y); 

  wire a,b; 

  mux_2_1 m1(s0,i0,i1,a); 

  mux_2_1 m2(s0,i2,i3,b); 

  mux_2_1 m3(s1,a,b,y); 

endmodule 
