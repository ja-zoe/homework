module mux_8_1(
  input wire a, 
  input wire b, 
  input wire c, 
  input wire d, 
  input wire e, 
  input wire f, 
  input wire g, 
  input wire h, 
  input wire [2:0] select, 
  output wire out
);
  assign out =  (select == 3'd0) ? a :
                (select == 3'd1) ? b :
                (select == 3'd2) ? c :
                (select == 3'd3) ? d :
                (select == 3'd4) ? e :
                (select == 3'd5) ? f :
                (select == 3'd6) ? g :
                (select == 3'd7) ? h :
                1'b0;
endmodule


module binary_to_gray(
  input wire [2:0] binary, 
  output wire [2:0] gray
);

  mux_8_1 gray_2_mux(
    .a(1'b0), .b(1'b0), .c(1'b0), .d(1'b0),
    .e(1'b1), .f(1'b1), .g(1'b1), .h(1'b1),
    .select(binary),
    .out(gray[2])
  );

  mux_8_1 gray_1_mux(
    .a(1'b0), .b(1'b0), .c(1'b1), .d(1'b1),
    .e(1'b1), .f(1'b1), .g(1'b0), .h(1'b0),
    .select(binary),
    .out(gray[1])
  );

  mux_8_1 gray_0_mux(
    .a(1'b0), .b(1'b1), .c(1'b1), .d(1'b0),
    .e(1'b0), .f(1'b1), .g(1'b1), .h(1'b0),
    .select(binary),
    .out(gray[0])
  );

endmodule
