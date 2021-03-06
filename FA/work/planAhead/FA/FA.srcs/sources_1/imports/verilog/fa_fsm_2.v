/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module fa_fsm_2 (
    input clk,
    input rst,
    output reg a,
    output reg b,
    output reg cin,
    input s,
    input cout,
    output reg [7:0] statenow
  );
  
  
  
  reg [26:0] M_counter_d, M_counter_q = 1'h0;
  localparam ONE_state = 4'd0;
  localparam TWO_state = 4'd1;
  localparam THREE_state = 4'd2;
  localparam FOUR_state = 4'd3;
  localparam FIVE_state = 4'd4;
  localparam SIX_state = 4'd5;
  localparam SEVEN_state = 4'd6;
  localparam EIGHT_state = 4'd7;
  localparam ERROR_state = 4'd8;
  
  reg [3:0] M_state_d, M_state_q = ONE_state;
  
  always @* begin
    M_state_d = M_state_q;
    M_counter_d = M_counter_q;
    
    M_counter_d = M_counter_q + 1'h1;
    a = 1'h0;
    b = 1'h0;
    cin = 1'h0;
    statenow = 8'h00;
    
    case (M_state_q)
      ONE_state: begin
        a = 1'h0;
        statenow = 8'h00;
        b = 1'h0;
        cin = 1'h0;
        if (M_counter_q[26+0-:1] == 1'h1) begin
          if (s != 1'h0 || cout != 1'h0) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = TWO_state;
          end
        end
      end
      TWO_state: begin
        a = 1'h0;
        b = 1'h0;
        cin = 1'h1;
        statenow = 8'h01;
        if (M_counter_q[26+0-:1] == 1'h0) begin
          if (s != 1'h1 || cout != 1'h0) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = THREE_state;
          end
        end
      end
      THREE_state: begin
        a = 1'h0;
        b = 1'h1;
        cin = 1'h0;
        statenow = 8'h02;
        if (M_counter_q[26+0-:1] == 1'h1) begin
          if (s != 1'h1 || cout != 1'h0) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = FOUR_state;
          end
        end
      end
      FOUR_state: begin
        a = 1'h0;
        b = 1'h1;
        cin = 1'h1;
        statenow = 8'h03;
        if (M_counter_q[26+0-:1] == 1'h0) begin
          if (s != 1'h0 || cout != 1'h1) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = FIVE_state;
          end
        end
      end
      FIVE_state: begin
        a = 1'h1;
        b = 1'h0;
        cin = 1'h0;
        statenow = 8'h04;
        if (M_counter_q[26+0-:1] == 1'h1) begin
          if (s != 1'h1 || cout != 1'h0) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = SIX_state;
          end
        end
      end
      SIX_state: begin
        a = 1'h1;
        b = 1'h0;
        cin = 1'h1;
        statenow = 8'h05;
        if (M_counter_q[26+0-:1] == 1'h0) begin
          if (s != 1'h0 || cout != 1'h1) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = SEVEN_state;
          end
        end
      end
      SEVEN_state: begin
        a = 1'h1;
        b = 1'h1;
        cin = 1'h0;
        statenow = 8'h06;
        if (M_counter_q[26+0-:1] == 1'h1) begin
          if (s != 1'h0 || cout != 1'h1) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = EIGHT_state;
          end
        end
      end
      EIGHT_state: begin
        a = 1'h1;
        b = 1'h1;
        cin = 1'h1;
        statenow = 8'h07;
        if (M_counter_q[26+0-:1] == 1'h0) begin
          if (s != 1'h1 || cout != 1'h1) begin
            M_state_d = ERROR_state;
          end else begin
            M_state_d = ONE_state;
          end
        end
      end
      ERROR_state: begin
        a = 1'h0;
        b = 1'h0;
        cin = 1'h0;
        statenow = 8'hff;
        M_state_d = ERROR_state;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule
