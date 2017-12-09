/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shape4draw_10 (
    input clk,
    input [9:0] horizontaloffset,
    input [8:0] verticaloffset,
    input [2:0] orientation,
    output reg bitout
  );
  
  
  
  wire [11-1:0] M_hvsync_counterX;
  wire [9-1:0] M_hvsync_counterY;
  hvsyncpass_35 hvsync (
    .clk(clk),
    .counterX(M_hvsync_counterX),
    .counterY(M_hvsync_counterY)
  );
  wire [51-1:0] M_base_bitmap;
  reg [1-1:0] M_base_en;
  reg [3-1:0] M_base_orientation;
  reg [6-1:0] M_base_address;
  newshape4_44 base (
    .clk(clk),
    .en(M_base_en),
    .orientation(M_base_orientation),
    .address(M_base_address),
    .bitmap(M_base_bitmap)
  );
  
  reg [10:0] counterh;
  
  reg [8:0] counterv;
  
  reg [50:0] fullcounter;
  
  reg [2:0] oriented;
  
  always @* begin
    counterh = M_hvsync_counterX;
    counterv = M_hvsync_counterY;
    M_base_en = ((counterh >= 9'h177 + horizontaloffset & counterh <= 9'h1dd + horizontaloffset));
    if (((counterh >= 9'h177 + horizontaloffset & counterh <= 9'h1dd + horizontaloffset)) & ((counterv >= 7'h78 + verticaloffset) & (counterv <= 8'hb4 + verticaloffset))) begin
      if (orientation == 1'h0 | orientation == 3'h5) begin
        oriented = 1'h0;
      end else begin
        if (orientation == 1'h1 | orientation == 3'h4) begin
          oriented = 1'h1;
        end else begin
          oriented = 2'h2;
        end
      end
      M_base_orientation = oriented;
      if (orientation == 2'h3 | orientation == 3'h4 | orientation == 3'h5) begin
        M_base_address = 6'h3b - (counterv - verticaloffset - 7'h78);
      end else begin
        M_base_address = counterv - verticaloffset - 7'h78;
      end
      fullcounter = M_base_bitmap;
      bitout = fullcounter[(6'h33 - ((counterh - 9'h177 - horizontaloffset) / 2'h2))*1+0-:1];
    end else begin
      M_base_address = 10'h3e7;
      M_base_orientation = 1'h0;
      bitout = 1'h0;
    end
  end
endmodule
