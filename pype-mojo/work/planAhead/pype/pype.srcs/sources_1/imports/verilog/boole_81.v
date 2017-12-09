/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boole_81 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] outboo
  );
  
  
  
  integer i;
  
  always @* begin
    outboo[0+7-:8] = 1'h0;
    
    case (alufn[0+3-:4])
      4'h8: begin
        for (i = 1'h0; i < 4'h8; i = i + 1) begin
          outboo[(i)*1+0-:1] = a[(i)*1+0-:1] & b[(i)*1+0-:1];
        end
      end
      4'he: begin
        for (i = 1'h0; i < 4'h8; i = i + 1) begin
          outboo[(i)*1+0-:1] = a[(i)*1+0-:1] | b[(i)*1+0-:1];
        end
      end
      4'h6: begin
        for (i = 1'h0; i < 4'h8; i = i + 1) begin
          outboo[(i)*1+0-:1] = a[(i)*1+0-:1] ^ b[(i)*1+0-:1];
        end
      end
      4'ha: begin
        for (i = 1'h0; i < 4'h8; i = i + 1) begin
          outboo[(i)*1+0-:1] = a[(i)*1+0-:1];
        end
      end
    endcase
  end
endmodule
