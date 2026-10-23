module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
    
    reg [7:0] Q;
    MUX x1(A,B,C,Q,Z);
    always @ (posedge clk)
        if(enable)
        begin
            Q[0]<=S;
            Q[1]<=Q[0];
            Q[2]<=Q[1];
            Q[3]<=Q[2];
            Q[4]<=Q[3];
            Q[5]<=Q[4];
            Q[6]<=Q[5];
            Q[7]<=Q[6];
        end          	
            

endmodule
            
module MUX (
    input wire a, b, c, 
    input wire [7:0] Q,  // 1. Added 'input wire' before the vector width
    output reg y         // 2. Changed to 'reg' because it is assigned inside an always block
);
    always @(*)
        begin
            case({a,b,c})
                3'b000 : y = Q[0]; // 3. Added '3'b' prefix for binary literals
                3'b001 : y = Q[1];
                3'b010 : y = Q[2];
                3'b011 : y = Q[3];
                3'b100 : y = Q[4];
                3'b101 : y = Q[5];
                3'b110 : y = Q[6];
                3'b111 : y = Q[7];
                default: y = 1'bx; // 4. Best practice: added a default case
            endcase
        end
endmodule
               
                

