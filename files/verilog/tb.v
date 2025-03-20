`timescale 1ps/1ps
module tb;
    reg a, b, cin;
    wire sum, cout;
    fa fa1(a, b, cin, sum, cout);
    initial begin
        $dumpfile("fa.vcd");
        $dumpvars(1);
    end
    initial begin
        a = 0; b = 0; cin = 0;
        #5 a = 0; b = 0; cin = 1;
        #5 a = 0; b = 1; cin = 0;
        #5 a = 0; b = 1; cin = 1;
        #5 a = 1; b = 0; cin = 0;
        #5 a = 1; b = 0; cin = 1;
        #5 a = 1; b = 1; cin = 0;
        #5 a = 1; b = 1; cin = 1;
        #5 a = 0; b = 0; cin = 0;
    end
    initial begin
        $monitor("simtime = %0g, a = %b, b = %b, cin = %b, sum = %b, cout = %b",
         $time, a, b, cin, sum, cout);
    end
endmodule