module ha(a,b,sum,carry); 

  input a,b; 

  output reg sum, carry; 

  assign sum = a^b; 

  assign carry =a&b; 

endmodule 

module fa_ha(input a,b,c,output sum,carry); 

wire x,y,z; 

ha h1(.a(a),.b(b),.sum(x),.carry(y)); 

ha h2(.a(x),.b(c),.sum(sum),.carry(z)); 

or o1(carry,y,z); 

endmodule 