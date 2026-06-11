module top_module ( input clk, input d, output q );
	wire x1,x2;
    my_dff(clk,d,x1);
    my_dff(clk,x1,x2);
    my_dff(clk,x2,q);
endmodule

