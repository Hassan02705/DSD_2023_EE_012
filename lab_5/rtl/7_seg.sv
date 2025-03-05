module lab5(
    input logic [3:0] num,
    input logic [2:0] sel,
    output logic a, b, c, d, e, f, g,
    output logic an0, an1, an2, an3, an4, an5, an6, an7
);

    always_comb begin
        case (num)
            4'h0: {a, b, c, d, e, f, g} = 7'b0000001; // Display '0'
            4'h1: {a, b, c, d, e, f, g} = 7'b1001111; // Display '1'
            4'h2: {a, b, c, d, e, f, g} = 7'b0010010; // Display '2'
            4'h3: {a, b, c, d, e, f, g} = 7'b0000110; // Display '3'
            4'h4: {a, b, c, d, e, f, g} = 7'b1001100; // Display '4'
            4'h5: {a, b, c, d, e, f, g} = 7'b0100100; // Display '5'
            4'h6: {a, b, c, d, e, f, g} = 7'b0100000; // Display '6'
            4'h7: {a, b, c, d, e, f, g} = 7'b0001111; // Display '7'
            4'h8: {a, b, c, d, e, f, g} = 7'b0000000; // Display '8'
            4'h9: {a, b, c, d, e, f, g} = 7'b0000100; // Display '9'
            4'hA: {a, b, c, d, e, f, g} = 7'b0001000; // Display 'A'
            4'hB: {a, b, c, d, e, f, g} = 7'b1100000; // Display 'b'
            4'hC: {a, b, c, d, e, f, g} = 7'b0110001; // Display 'C'
            4'hD: {a, b, c, d, e, f, g} = 7'b1000010; // Display 'd'
            4'hE: {a, b, c, d, e, f, g} = 7'b0110000; // Display 'E'
            4'hF: {a, b, c, d, e, f, g} = 7'b0111000; // Display 'F'
            default: {a, b, c, d, e, f, g} = 7'b1111111; // Turn off all segments
        endcase
    end

    always_comb begin
        case (sel)
            3'b000: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11111110;
            3'b001: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11111101;
            3'b010: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11111011;
            3'b011: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11110111;
            3'b100: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11101111;
            3'b101: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11011111; 
            3'b110: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b10111111;
            3'b111: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b01111111;
            default: {an7, an6, an5, an4, an3, an2, an1, an0} = 8'b11111111; // Disable all anodes
        endcase
    end

endmodule
