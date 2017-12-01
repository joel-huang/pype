module bannerword1 (
    input clk,  // clock
    input wire [4:0] address,  // reset
    output reg [69:0] outdata
  );
  
  (* rom_style = "block" *)
  
  reg [4:0] address_reg;

  /* Combinational Logic */
  always @* begin
    case(address_reg)
    0: outdata = 70'b1111110000001111110000001111111110000001111110000001111110000000000001;
    1: outdata = 70'b1111110000001111110000001111111110000001111110000001111110000000000001;
    2: outdata = 70'b1111110000001111110000001111111110000001111110000001111110000000000001;
    3: outdata = 70'b1110001110001110001110001110000000001110000000001110000000000000000001;
    4: outdata = 70'b1110001110001110001110001110000000001110000000001110000000000000000001;
    5: outdata = 70'b1110001110001110001110001110000000001110000000001110000000000000000001;
    6: outdata = 70'b1111111110001111110000001111110000000001110000000001110000000000000001;
    7: outdata = 70'b1111111110001111110000001111110000000001110000000001110000000000000001;
    8: outdata = 70'b1111111110001111110000001111110000000001110000000001110000000000000001;
    9: outdata = 70'b1110000000001110001110001110000000000000001110000000001110000000000001;
    10: outdata = 70'b1110000000001110001110001110000000000000001110000000001110000000000001;
    11: outdata = 70'b1110000000001110001110001110000000000000001110000000001110000000000001;
    12: outdata = 70'b1110000000001110001110001111111110001111111110001111111110000000000001;
    13: outdata = 70'b1110000000001110001110001111111110001111111110001111111110000000000001;
    14: outdata = 70'b1110000000001110001110001111111110001111111110001111111110000000000001;
    default: outdata = 0;
    endcase
  end
  
  /* Sequential Logic */
  always @(posedge clk) begin
    address_reg <= address;
  end
  
endmodule
