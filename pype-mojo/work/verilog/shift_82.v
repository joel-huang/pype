/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift_82 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] outshi
  );
  
  
  
  always @* begin
    outshi[0+7-:8] = 1'h0;
    
    case (alufn[0+1-:2])
      2'h0: begin
        outshi = a << b[0+2-:3];
      end
      2'h1: begin
        outshi = a >> b[0+2-:3];
      end
      2'h3: begin
        outshi = $signed(a) >>> b[0+2-:3];
      end
    endcase
  end
endmodule
