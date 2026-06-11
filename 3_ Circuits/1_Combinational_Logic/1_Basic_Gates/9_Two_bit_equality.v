module top_module ( input [1:0] A, input [1:0] B, output z ); 
    always @(*) begin
        z=0;
        if(A==B)
            z=1;
    end
endmodule

