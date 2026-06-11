module a (input x, input y, output z);
    assign z= (x^y) & x;
endmodule

module b ( input x, input y, output z );
    xnor(z,x,y);
endmodule

module top_module (input x, input y, output z);
wire w1,w2,w3,w4;
    a u1(.x(x),.y(y),.z(w1));
    b u2(x,y,w2);
    a u3(x,y,w3);
    b u4(x,y,w4);
    assign z= (w1|w2) ^ (w3&w4);
    
endmodule

