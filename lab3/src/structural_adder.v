`include "../../lib/EECS151.v"

module structural_adder #(
    parameter N = 3
) (
    input [N-1:0] a,
    input [N-1:0] b,
    output [N:0] sum
);
    // TODO: Your code (from lab 2). You need to parameterize it
    wire [N:0] c;
    
    genvar i;
    
    generate
        for (i=0; i<N; i=i+1) begin:bit
            full_adder add(.a(a[i]), .b(b[i]), .carry_in(c[i]), .sum(sum[i]), .carry_out(c[i+1]));
        end
    endgenerate
    
    assign c[0] = 1'b0;
    assign sum[N] = c[N];
    
endmodule
