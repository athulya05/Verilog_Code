module dff(clk,clear,enable,din,q); 

input [7:0]din; 

input clk,clear,enable; 

output reg [7:0]q; 

always @(posedge clk) 

    if(enable)begin 

        if(clear) 

            q <= 0; 

        else  

            q <= din; 

    end 

endmodule
