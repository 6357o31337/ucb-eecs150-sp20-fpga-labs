module structural_adder (
    input [2:0] a,
    input [2:0] b,
    output [3:0] sum
);
    // TODO: Insert your RTL here
    wire [3:0] c;
    
    genvar i;
    
    generate
        for (i=0; i<3; i=i+1) begin:bit
            full_adder add(.a(a[i]), .b(b[i]), .carry_in(c[i]), .sum(sum[i]), .carry_out(c[i+1]));
        end
    endgenerate
    
    assign c[0] = 1'b0;
    assign sum[3] = c[3];
    
endmodule
