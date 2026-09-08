module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    
    genvar i;
    
    generate
        for(i=0;i<99;i=i+1)begin : bothgen
        assign out_both[i]=in[i]&in[i+1];
    end
        for(i=1;i<100;i=i+1)begin : anygen
        assign out_any[i]=in[i] | in[i-1];
    end
        for(i=0;i<99;i=i+1)begin : diffgen
        assign out_different[i]=in[i] ^ in[i+1];
    end
    assign out_different[99]=in[99]^in[0];
    endgenerate
endmodule

