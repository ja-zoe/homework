module binary_to_gray_encoder(
    input [2:0] binary,  // B2, B1, B0
    output [2:0] gray    // G2, G1, G0
);

// MUX for G2
assign gray[2] = (binary == 3'd0) ? 1'b0 :
                 (binary == 3'd1) ? 1'b0 :
                 (binary == 3'd2) ? 1'b0 :
                 (binary == 3'd3) ? 1'b0 :
                 (binary == 3'd4) ? 1'b1 :
                 (binary == 3'd5) ? 1'b1 :
                 (binary == 3'd6) ? 1'b1 :
                 (binary == 3'd7) ? 1'b1 : 1'b0;

// MUX for G1
assign gray[1] = (binary == 3'd0) ? 1'b0 :
                 (binary == 3'd1) ? 1'b0 :
                 (binary == 3'd2) ? 1'b1 :
                 (binary == 3'd3) ? 1'b1 :
                 (binary == 3'd4) ? 1'b1 :
                 (binary == 3'd5) ? 1'b1 :
                 (binary == 3'd6) ? 1'b0 :
                 (binary == 3'd7) ? 1'b0 : 1'b0;

// MUX for G0
assign gray[0] = (binary == 3'd0) ? 1'b0 :
                 (binary == 3'd1) ? 1'b1 :
                 (binary == 3'd2) ? 1'b1 :
                 (binary == 3'd3) ? 1'b0 :
                 (binary == 3'd4) ? 1'b0 :
                 (binary == 3'd5) ? 1'b1 :
                 (binary == 3'd6) ? 1'b1 :
                 (binary == 3'd7) ? 1'b0 : 1'b0;

endmodule