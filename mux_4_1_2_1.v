module mux_2_1(input s,i0,i1,output out); 

  wire x,y,z; 

  not n1(x,s); 

  and a1(y,x,i0); 

  and a2(z,s,i1); 

  or o1(out,y,z); 

endmodule 

 

module mux_4_1_2_1(input i0,i1,i2,i3,s0,s1,output y); 

  wire a,b; 

  mux_2_1 m1(s0,i0,i1,a); 

  mux_2_1 m2(s0,i2,i3,b); 

  mux_2_1 m3(s1,a,b,y); 

endmodule 

// TestBench

module mux_4_1_2_1_tb; 

  reg a,b,c,d; 

  reg s0,s1; 

 wire out; 

 mux_4_1 tb(.i0(a),.i1(b),.i2(c),.i3(d),.s0(s0),.s1(s1),.y(out)); 

  initial begin 

    a=1; b=0; c=0; d=0; 

    s1=0; s0=0; 

    #5; 

    s1=0; s0=1; 

    #5; 

    s1=1; s0=0; 

    #5; 

    s1=1; s0=1; 

    #5 $finish; 

  end 

  always @(s1 or s0) 

    $display("time=%0t, i0=%b, i1=%0b,i2=%0b,i3=%0b, s1=%0b, s0=%0b, Output=%d",$time,a,b,c,d,s1,s0,out); 

  initial 

  begin 

    $dumpfile("dump.vcd"); 

    $dumpvars(1); 

  end  

endmodule 
