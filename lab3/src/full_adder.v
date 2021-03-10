module full_adder (
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);
    // TODO: Your code (from lab 2)
    assign sum = a ^ b ^ carry_in;
    assign carry_out = a&carry_in | a&b | b&carry_in;
    
endmodule
