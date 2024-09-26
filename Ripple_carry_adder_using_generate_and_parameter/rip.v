module fa(input a,b,c, output sum, carry); 

  assign sum = a^b^c; 

  assign carry = ((a&b)|(b&c)|(a&c)); 

endmodule 


module rip #(parameter SIZE = 4) 

  (input[SIZE-1 : 0] a,b,input c,output[SIZE-1 : 0] sum,carry); 

   

  fa a1(a[0],b[0],c,sum[0],carry[0]); 

   

  genvar i; 

  generate 

  for (i=1;i<SIZE;i = i + 1) begin 

    fa a1(a[i],b[i],carry[i-1],sum[i],carry[i]); 

 end 

  endgenerate 

endmodule 
