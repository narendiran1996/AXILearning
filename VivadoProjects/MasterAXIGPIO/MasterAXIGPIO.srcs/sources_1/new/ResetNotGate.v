`timescale 1ns / 1ps


module ResetNotGate
                (
                    input resetIn,
                    output resetOut
                );

not(resetOut, resetIn);
endmodule
