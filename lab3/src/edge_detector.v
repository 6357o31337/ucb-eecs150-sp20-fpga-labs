`include "../../lib/EECS151.v"

module edge_detector #(
    parameter WIDTH = 1
)(
    input clk,
    input [WIDTH-1:0] signal_in,
    output [WIDTH-1:0] edge_detect_pulse
);

      // TODO: implement an edge detector that detects a rising edge of 'signal_in'
      // and outputs a one-cycle pulse at the next clock edge
      // Feel free to use as many number of registers you like
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            REGISTER_R reg_r (.q(edge_detect_pulse[i]), .d(signal_in[i]), .rst(edge_detect_pulse[i]), .clk(clk));
        end
    endgenerate

endmodule
