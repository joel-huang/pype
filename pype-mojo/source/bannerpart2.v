module bannerpart2 (
    input clk,  // clock
    input wire [7:0] address,  // reset
    output reg [56:0] outdata
  );
  
  (* rom_style = "block" *)
  
  reg [7:0] address_reg;

  /* Combinational Logic */
  always @* begin
    case (address_reg)
        0: outdata = 57'b111000000000000000000000000000000000000000000000000000000;
        1: outdata = 57'b111000000000000000000000000000000000000000000000000000000;
        2: outdata = 57'b111000000000000000000000000000000000000000000000000000000;
        3: outdata = 57'b000111111000000000000000000000000000000000000000000000000;
        4: outdata = 57'b000111111000000000000000000000000000000000000000000000000;
        5: outdata = 57'b000111111000000000000000000000000000000000000000000000000;
        6: outdata = 57'b000000000111000000000000000000000000000000000000000000000;
        7: outdata = 57'b000000000111000000000000000000000000000000000000000000000;
        8: outdata = 57'b000000000111000000000000000000000000000000000000000000000;
        9: outdata = 57'b000000000000111111000000000000000000000000000000000000000;
        10: outdata = 57'b000000000000111111000000000000000000000000000000000000000;
        11: outdata = 57'b000000000000111111000000000000000000000000000000000000000;
        12: outdata = 57'b000000000000000000111111000000000000000000000000000000000;
        13: outdata = 57'b000000000000000000111111000000000000000000000000000000000;
        14: outdata = 57'b000000000000000000111111000000000000000000000000000000000;
        15: outdata = 57'b000000000000000000000000111111000000000000000000000000000;
        16: outdata = 57'b000000000000000000000000111111000000000000000000000000000;
        17: outdata = 57'b000000000000000000000000111111000000000000000000000000000;
        18: outdata = 57'b000000000000000000000000000000111111000000000000000000000;
        19: outdata = 57'b000000000000000000000000000000111111000000000000000000000;
        20: outdata = 57'b000000000000000000000000000000111111000000000000000000000;
        21: outdata = 57'b000000000000000000000000000000000000111000000000000000000;
        22: outdata = 57'b000000000000000000000000000000000000111000000000000000000;
        23: outdata = 57'b000000000000000000000000000000000000111000000000000000000;
        24: outdata = 57'b000000000000000000000000000000000000000111111000000000000;
        25: outdata = 57'b000000000000000000000000000000000000000111111000000000000;
        26: outdata = 57'b000000000000000000000000000000000000000111111000000000000;
        27: outdata = 57'b000000000000000000000000000000000000000000000111111000000;
        28: outdata = 57'b000000000000000000000000000000000000000000000111111000000;
        29: outdata = 57'b000000000000000000000000000000000000000000000111111000000;
        30: outdata = 57'b000000000000000000000000000000000000000000000000000111111;
        31: outdata = 57'b000000000000000000000000000000000000000000000000000111111;
        32: outdata = 57'b000000000000000000000000000000000000000000000000000111111;
        33: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        34: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        35: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        36: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        37: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        38: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        39: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        40: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        41: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        42: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        43: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        44: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        45: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        46: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        47: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        48: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        49: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        50: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        51: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        52: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        53: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        54: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        55: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        56: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        57: outdata = 57'b000000111111111111000000000000111111111000000000000000111;
        58: outdata = 57'b000000111111111111000000000000111111111000000000000000111;
        59: outdata = 57'b000000111111111111000000000000111111111000000000000000111;
        60: outdata = 57'b000000111111000000111000000111111000000111000000000000111;
        61: outdata = 57'b000000111111000000111000000111111000000111000000000000111;
        62: outdata = 57'b000000111111000000111000000111111000000111000000000000111;
        63: outdata = 57'b000000111111000000111000000111111000000111000000000000111;
        64: outdata = 57'b000000111111000000111000000111111000000111000000000000111;
        65: outdata = 57'b000000111111000000111000000111111000000111000000000000111;
        66: outdata = 57'b000000111111111111000000000111111111111111000000000000111;
        67: outdata = 57'b000000111111111111000000000111111111111111000000000000111;
        68: outdata = 57'b000000111111111111000000000111111111111111000000000000111;
        69: outdata = 57'b000000111111000000000000000111111000000000000000000000111;
        70: outdata = 57'b000000111111000000000000000111111000000000000000000000111;
        71: outdata = 57'b000000111111000000000000000111111000000000000000000000111;
        72: outdata = 57'b000000111111000000000000000000111111111111000000000000111;
        73: outdata = 57'b000000111111000000000000000000111111111111000000000000111;
        74: outdata = 57'b000000111111000000000000000000111111111111000000000000111;
        75: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        76: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        77: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        78: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        79: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        80: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        81: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        82: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        83: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        84: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        85: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        86: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        87: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        88: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        89: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        90: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        91: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        92: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        93: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        94: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        95: outdata = 57'b000000000000000000000000000000000000000000000000000000111;
        96: outdata = 57'b000000000000000000000000000000000000000000000000000111000;
        97: outdata = 57'b000000000000000000000000000000000000000000000000000111000;
        98: outdata = 57'b000000000000000000000000000000000000000000000000000111000;
        99: outdata = 57'b000000000000000000000000000000000000000000000111111000000;
        100: outdata = 57'b000000000000000000000000000000000000000000000111111000000;
        101: outdata = 57'b000000000000000000000000000000000000000000000111111000000;
        102: outdata = 57'b000000000000000000000000000000000000000111111000000000000;
        103: outdata = 57'b000000000000000000000000000000000000000111111000000000000;
        104: outdata = 57'b000000000000000000000000000000000000000111111000000000000;
        105: outdata = 57'b000000000000000000000000000000000111111000000000000000000;
        106: outdata = 57'b000000000000000000000000000000000111111000000000000000000;
        107: outdata = 57'b000000000000000000000000000000000111111000000000000000000;
        108: outdata = 57'b000000000000000000000000000000111000000000000000000000000;
        109: outdata = 57'b000000000000000000000000000000111000000000000000000000000;
        110: outdata = 57'b000000000000000000000000000000111000000000000000000000000;
        111: outdata = 57'b000000000000000000000000111111000000000000000000000000000;
        112: outdata = 57'b000000000000000000000000111111000000000000000000000000000;
        113: outdata = 57'b000000000000000000000000111111000000000000000000000000000;
        114: outdata = 57'b000000000000000000111111000000000000000000000000000000000;
        115: outdata = 57'b000000000000000000111111000000000000000000000000000000000;
        116: outdata = 57'b000000000000000000111111000000000000000000000000000000000;
        117: outdata = 57'b000000000000111111000000000000000000000000000000000000000;
        118: outdata = 57'b000000000000111111000000000000000000000000000000000000000;
        119: outdata = 57'b000000000000111111000000000000000000000000000000000000000;
        120: outdata = 57'b000000000111000000000000000000000000000000000000000000000;
        121: outdata = 57'b000000000111000000000000000000000000000000000000000000000;
        122: outdata = 57'b000000000111000000000000000000000000000000000000000000000;
        123: outdata = 57'b000111111000000000000000000000000000000000000000000000000;
        124: outdata = 57'b000111111000000000000000000000000000000000000000000000000;
        125: outdata = 57'b000111111000000000000000000000000000000000000000000000000;
        126: outdata = 57'b111000000000000000000000000000000000000000000000000000000;
        127: outdata = 57'b111000000000000000000000000000000000000000000000000000000;
        128: outdata = 57'b111000000000000000000000000000000000000000000000000000000;



        
        default: outdata = 57'b000000000000000000000000000000000000000000000000000000000000000;
        
        endcase


  end
  
  /* Sequential Logic */
  always @(posedge clk) begin
    address_reg <= address;
  end
  
endmodule