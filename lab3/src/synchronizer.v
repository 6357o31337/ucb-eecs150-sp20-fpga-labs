`include "../../lib/EECS151.v"

module synchronizer #(parameter WIDTH = 1) (
    input [WIDTH-1:0] async_signal,
    input clk,
    output [WIDTH-1:0] sync_signal
);
	    // TODO: Create your 2 flip-flop synchronizer here
	    // This module takes in a vector of WIDTH-bit asynchronous
      // (from different clock domain or not clocked, such as button press) signals
	    // and should output a vector of WIDTH-bit synchronous signals
      // that are synchronized to the input clk

	wire [WIDTH-1:0] w;
    genvar i;
    
    generate
        for (i=0; i<WIDTH; i=i+1) begin
            REGISTER r0 (.q(w[0]), .d(async_signal[i]), .clk(clk));
            REGISTER r1 (.q(sync_signal[i]), .d(w[0]), .clk(clk));
        end
    endgenerate


endmodule
