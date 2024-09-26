module mux_2_1(input s,i0,i1,output out); 

  wire x,y,z; 

  not n1(x,s); 

  and a1(y,x,i0); 

  and a2(z,s,i1); 

  or o1(out,y,z); 

endmodule 

// Testbench
module mux_2_1_tb; 

  reg s,i0,i1; 

  wire out; 

  mux_2_1 tb(s,i0,i1,out); 

  initial begin 

    i0=0; 

    i1=1; 

    s=0; 

    #40 $finish; 

  end 

    always #10 s=~s; 

  always @(s) 

    $display("time=%0t, sel=%b, i0=%b, i1=%0b, Output=%b",$time,s,i0,i1,out); 

  initial 

  begin 

    $dumpfile("dump.vcd"); 

    $dumpvars(1); 

  end  

endmodule 