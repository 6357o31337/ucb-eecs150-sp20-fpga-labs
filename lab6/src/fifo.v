
module fifo #(
    parameter WIDTH = 32,  // data width is 32-bit
    parameter LOGDEPTH = 3 // 2^3 = 8 entries
) (
    input clk,
    input rst,

    input  enq_valid,
    input  [WIDTH-1:0] enq_data,
    output enq_ready,

    output deq_valid,
    output [WIDTH-1:0] deq_data,
    input deq_ready
);
    // TODO: Your code from Lab 5

endmodule
