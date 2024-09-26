module rca(a,b,cin,sum,cout); 

  input [7:0]a; 

  input [7:0]b; 

  input cin; 

  output [7:0] sum; 

  output [7:0] cout; 

  wire c1,c2,c3,c4,c5,c6,c7; 

   

  fa n1(a[0],b[0],cin,sum[0],cout[0]); 

  fa n2(a[1],b[1],cout[0],sum[1],cout[1]); 

  fa n3(a[2],b[2],cout[1],sum[2],cout[2]); 

  fa n4(a[3],b[3],cout[2],sum[3],cout[3]); 

  fa n5(a[4],b[4],cout[3],sum[4],cout[4]); 

  fa n6(a[5],b[5],cout[4],sum[5],cout[5]); 

  fa n7(a[6],b[6],cout[5],sum[6],cout[6]); 

  fa n8(a[7],b[7],cout[6],sum[7],cout[7]); 

   

endmodule 

 

module fa(input a,b,cin,output sum,cout); 

  wire w1,w2,w3,w4,w5; 

  xor x1(w1,a,b); 

  xor x2(sum,w1,cin); 

  and a1(w2,a,b); 

  and a2(w3,b,cin); 

  and a3(w4,a,cin); 

  or o1(w5,w2,w3); 

  or o2(cout,w4,w5); 

endmodule 
