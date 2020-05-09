//////////////////////////////////////////////////////////////////////////////////
// Design Name: Test Bench for BCD to Gray code converter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_bench_Bin_Gray();

    //inputs for DUT
       reg A = 1'b0;
       reg B = 1'b0;
       reg C = 1'b0;
       reg D = 1'b0;
    //outputs from DUT
       wire [3:0] G;


    Bin_Gray DUT (.A(A),.B(B),.C(C),.D(D),.G(G));

    initial
        begin
            $display($time,"<< Simulation Results >>");
            $monitor($time,"A=%b, B=%b, C=%b, D=%b, G=%b",A,B,C,D,G);
        end

    initial
        begin
            #2;
            A = 0; B = 0; C = 0; D = 0;
            #2;
            A = 1; B = 0; C = 0; D = 0;
            #2;
            A = 0; B = 1; C = 0; D = 0;
            #2;
            A = 1; B = 1; C = 0; D = 0;
            #2;
            A = 0; B = 0; C = 1; D = 0;
            #2;
            A = 1; B = 0; C = 1; D = 0;
            #2;
            A = 0; B = 1; C = 1; D = 0;
            #2;
            A = 1; B = 1; C = 1; D = 0;
            #2;
            A = 0; B = 0; C = 0; D = 1;
            #2;
            A = 1; B = 0; C = 0; D = 1;
            #2;
            A = 0; B = 1; C = 0; D = 1;
            #2;
            A = 1; B = 1; C = 0; D = 1;
            #2;
            A = 0; B = 0; C = 1; D = 1;
            #2;
            A = 1; B = 0; C = 1; D = 1;
            #2;
            A = 0; B = 1; C = 1; D = 1;
            #2;
            A = 1; B = 1; C = 1; D = 1;
            #2;
            $finish;
     end
endmodule
