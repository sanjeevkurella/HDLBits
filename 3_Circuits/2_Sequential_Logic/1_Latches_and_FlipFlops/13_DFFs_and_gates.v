module d(input clk,d,output reg q);
    always @(posedge clk)
        begin
            q<=d;
        end
endmodule

module top_module (
    input clk,
    input x,
    output z
); 
    wire w1,w3,w5;
    
    
    
    d u1(.clk(clk),.d(x^w1),.q(w1));
    d u2(.clk(clk),.d(x&~w3),.q(w3));
    d u3(.clk(clk),.d(x|~w5),.q(w5));
    
    assign z = ~(w1|w3|w5);

endmodule

