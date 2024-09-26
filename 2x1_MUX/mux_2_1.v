module mux_2_1(input s,i0,i1,output out); 

  wire x,y,z; 

  not n1(x,s); 

  and a1(y,x,i0); 

  and a2(z,s,i1); 

  or o1(out,y,z); 

endmodule 
