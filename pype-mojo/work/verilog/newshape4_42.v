module newshape4_42 (clk, en, orientation, address, bitmap); 
    input  clk;
    input   en;
    input wire [2:0] orientation;
    input wire[5:0] address;
    output reg [50:0] bitmap;
    reg   [8:0] raddr;
    reg [5:0] address_reg;
    reg[2:0] orient_reg;
 always @(posedge clk)
 begin

    if (en)
     address_reg <= address;
     orient_reg <= orientation;
     raddr <= {orient_reg,address_reg};
 end

 always @(raddr) 
 begin
    if (en)
       case(raddr)
    9'b000000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b000000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b000000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000000100 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b000000101 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000000110 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000000111 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000001000 : bitmap <= 51'b000000000000000000000011111111000000000000000000000;
    9'b000001001 : bitmap <= 51'b000000000000000000000001111110000000000000000000000;
    9'b000001010 : bitmap <= 51'b000000000000000000000001111110000000000000000000000;
    9'b000001011 : bitmap <= 51'b000000100000000000000000111100000000000000001000000;
    9'b000001100 : bitmap <= 51'b000011110000000000000000011000000000000000011110000;
    9'b000001101 : bitmap <= 51'b000111111000000000000000001000000000000000011111000;
    9'b000001110 : bitmap <= 51'b011111111000000000000000000000000000000000111111110;
    9'b000001111 : bitmap <= 51'b111111111100000000000000000000000000000000111111111;
    9'b000010000 : bitmap <= 51'b111111111110000000000000000000000000000001111111111;
    9'b000010001 : bitmap <= 51'b111111111111000000000000000000000000000001111111111;
    9'b000010010 : bitmap <= 51'b111111111111000000000000000000000000000011111111111;
    9'b000010011 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b000010100 : bitmap <= 51'b111111111111100000000000000000000000000111111111111;
    9'b000010101 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b000010110 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b000010111 : bitmap <= 51'b111111111111100000000000000000000000011111111111111;
    9'b000011000 : bitmap <= 51'b111111111111000000000000000000000000011111111111111;
    9'b000011001 : bitmap <= 51'b000000000000000000000000000000000000111111111111111;
    9'b000011010 : bitmap <= 51'b000000000000000000000000000000000001111111111111111;
    9'b000011011 : bitmap <= 51'b000000000000000000000000000000000001111111111111111;
    9'b000011100 : bitmap <= 51'b000000000000000000000000000000000011111111111111111;
    9'b000011101 : bitmap <= 51'b000000000000000000000000000000000011111111111111111;
    9'b000011110 : bitmap <= 51'b000000000000000000000000000000000111111111111111111;
    9'b000011111 : bitmap <= 51'b000000000000000000000000000000000111111111111111111;
    9'b000100000 : bitmap <= 51'b000000000000000000000000000000001111111111111111111;
    9'b000100001 : bitmap <= 51'b000000000000000000000000000000001111111111111111111;
    9'b000100010 : bitmap <= 51'b000000000000000000000000000000011111111111111111111;
    9'b000100011 : bitmap <= 51'b000000000000000000000000000000111111111111111111111;
    9'b000100100 : bitmap <= 51'b000000000000000000000000000000111111111111111111111;
    9'b000100101 : bitmap <= 51'b111111111111100000000000000001111111111111111111111;
    9'b000100110 : bitmap <= 51'b111111111111100000000000000001111111111111111111111;
    9'b000100111 : bitmap <= 51'b111111111111000000000000000011111111111111111111111;
    9'b000101000 : bitmap <= 51'b111111111111000000000000000011111111111111111111111;
    9'b000101001 : bitmap <= 51'b111111111110000000000000000111111111111111111111111;
    9'b000101010 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b000101011 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b000101100 : bitmap <= 51'b111111111000000000000000011111111111111111111111111;
    9'b000101101 : bitmap <= 51'b011111111000000000000000011111111111111111111111110;
    9'b000101110 : bitmap <= 51'b000111110000000000000000111111111111111111111111000;
    9'b000101111 : bitmap <= 51'b000011110000000000000000111111111111111111111110000;
    9'b000110000 : bitmap <= 51'b000000100000000000000001111111111111111111111000000;
    9'b000110001 : bitmap <= 51'b000000000000000000000011111111111111111111100000000;
    9'b000110010 : bitmap <= 51'b000000000000000000000011111111111111111111000000000;
    9'b000110011 : bitmap <= 51'b000000000000000000000111111111111111111100000000000;
    9'b000110100 : bitmap <= 51'b000000000000000000000111111111111111110000000000000;
    9'b000110101 : bitmap <= 51'b000000000000000000001111111111111111100000000000000;
    9'b000110110 : bitmap <= 51'b000000000000000000001111111111111110000000000000000;
    9'b000110111 : bitmap <= 51'b000000000000000000011111111111111000000000000000000;
    9'b000111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b000111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;

    
    9'b001000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b001000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b001000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b001000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001000100 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b001000101 : bitmap <= 51'b000000000000000000001111111111110000000000000000000;
    9'b001000110 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001000111 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001001000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001001001 : bitmap <= 51'b000000000000000000000111111111100000000000000000000;
    9'b001001010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b001001011 : bitmap <= 51'b000000100000000000000111111111000000000000001000000;
    9'b001001100 : bitmap <= 51'b000011100000000000000011111111000000000000011110000;
    9'b001001101 : bitmap <= 51'b000111110000000000000001111110000000000000011111000;
    9'b001001110 : bitmap <= 51'b011111110000000000000000111100000000000000111111110;
    9'b001001111 : bitmap <= 51'b111111111000000000000000011000000000000000111111111;
    9'b001010000 : bitmap <= 51'b111111111000000000000000000000000000000000111111111;
    9'b001010001 : bitmap <= 51'b111111111100000000000000000000000000000001111111111;
    9'b001010010 : bitmap <= 51'b111111111100000000000000000000000000000001111111111;
    9'b001010011 : bitmap <= 51'b111111111100000000000000000000000000000011111111111;
    9'b001010100 : bitmap <= 51'b111111111110000000000000000000000000000011111111111;
    9'b001010101 : bitmap <= 51'b111111111110000000000000000000000000000011111111111;
    9'b001010110 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b001010111 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011000 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011001 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011010 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011011 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011100 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011101 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011110 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011111 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100000 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100001 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100010 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100011 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100100 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100101 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001100110 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001100111 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101000 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101001 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101010 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101011 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101100 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101101 : bitmap <= 51'b011111111111111111111111111111111111111111111111110;
    9'b001101110 : bitmap <= 51'b000111111111111111111111111111111111111111111111000;
    9'b001101111 : bitmap <= 51'b000011111111111111111111111111111111111111111110000;
    9'b001110000 : bitmap <= 51'b000000111111111111111111111111111111111111111000000;
    9'b001110001 : bitmap <= 51'b000000001111111111111111111111111111111111100000000;
    9'b001110010 : bitmap <= 51'b000000000111111111111111111111111111111111000000000;
    9'b001110011 : bitmap <= 51'b000000000001111111111111111111111111111100000000000;
    9'b001110100 : bitmap <= 51'b000000000000011111111111111111111111110000000000000;
    9'b001110101 : bitmap <= 51'b000000000000001111111111111111111111100000000000000;
    9'b001110110 : bitmap <= 51'b000000000000000011111111111111111110000000000000000;
    9'b001110111 : bitmap <= 51'b000000000000000000111111111111111000000000000000000;
    9'b001111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b001111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b001111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;

    9'b010000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b010000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b010000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b010000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b010000100 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b010000101 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b010000110 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b010000111 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b010001000 : bitmap <= 51'b000000000000000000000111111110000000000000000000000;
    9'b010001001 : bitmap <= 51'b000000000000000000000011111100000000000000000000000;
    9'b010001010 : bitmap <= 51'b000000000000000000000011111100000000000000000000000;
    9'b010001011 : bitmap <= 51'b000000100000000000000001111000000000000000001000000;
    9'b010001100 : bitmap <= 51'b000011110000000000000000110000000000000000011110000;
    9'b010001101 : bitmap <= 51'b000111110000000000000000100000000000000000111111000;
    9'b010001110 : bitmap <= 51'b011111111000000000000000000000000000000000111111110;
    9'b010001111 : bitmap <= 51'b111111111000000000000000000000000000000001111111111;
    9'b010010000 : bitmap <= 51'b111111111100000000000000000000000000000011111111111;
    9'b010010001 : bitmap <= 51'b111111111100000000000000000000000000000111111111111;
    9'b010010010 : bitmap <= 51'b111111111110000000000000000000000000000111111111111;
    9'b010010011 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b010010100 : bitmap <= 51'b111111111111000000000000000000000000001111111111111;
    9'b010010101 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b010010110 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b010010111 : bitmap <= 51'b111111111111110000000000000000000000001111111111111;
    9'b010011000 : bitmap <= 51'b111111111111110000000000000000000000000111111111111;
    9'b010011001 : bitmap <= 51'b111111111111111000000000000000000000000000000000000;
    9'b010011010 : bitmap <= 51'b111111111111111100000000000000000000000000000000000;
    9'b010011011 : bitmap <= 51'b111111111111111100000000000000000000000000000000000;
    9'b010011100 : bitmap <= 51'b111111111111111110000000000000000000000000000000000;
    9'b010011101 : bitmap <= 51'b111111111111111110000000000000000000000000000000000;
    9'b010011110 : bitmap <= 51'b111111111111111111000000000000000000000000000000000;
    9'b010011111 : bitmap <= 51'b111111111111111111000000000000000000000000000000000;
    9'b010100000 : bitmap <= 51'b111111111111111111100000000000000000000000000000000;
    9'b010100001 : bitmap <= 51'b111111111111111111100000000000000000000000000000000;
    9'b010100010 : bitmap <= 51'b111111111111111111110000000000000000000000000000000;
    9'b010100011 : bitmap <= 51'b111111111111111111111000000000000000000000000000000;
    9'b010100100 : bitmap <= 51'b111111111111111111111000000000000000000000000000000;
    9'b010100101 : bitmap <= 51'b111111111111111111111100000000000000001111111111111;
    9'b010100110 : bitmap <= 51'b111111111111111111111100000000000000001111111111111;
    9'b010100111 : bitmap <= 51'b111111111111111111111110000000000000000111111111111;
    9'b010101000 : bitmap <= 51'b111111111111111111111110000000000000000111111111111;
    9'b010101001 : bitmap <= 51'b111111111111111111111111000000000000000011111111111;
    9'b010101010 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b010101011 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b010101100 : bitmap <= 51'b111111111111111111111111110000000000000000111111111;
    9'b010101101 : bitmap <= 51'b011111111111111111111111110000000000000000111111110;
    9'b010101110 : bitmap <= 51'b000111111111111111111111111000000000000000011111000;
    9'b010101111 : bitmap <= 51'b000011111111111111111111111000000000000000011110000;
    9'b010110000 : bitmap <= 51'b000000111111111111111111111100000000000000001000000;
    9'b010110001 : bitmap <= 51'b000000001111111111111111111110000000000000000000000;
    9'b010110010 : bitmap <= 51'b000000000111111111111111111110000000000000000000000;
    9'b010110011 : bitmap <= 51'b000000000001111111111111111111000000000000000000000;
    9'b010110100 : bitmap <= 51'b000000000000011111111111111111000000000000000000000;
    9'b010110101 : bitmap <= 51'b000000000000001111111111111111100000000000000000000;
    9'b010110110 : bitmap <= 51'b000000000000000011111111111111100000000000000000000;
    9'b010110111 : bitmap <= 51'b000000000000000000111111111111110000000000000000000;
    9'b010111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b010111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b010111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b010111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;


    default: bitmap <= 0;
       endcase
 end
        endmodule