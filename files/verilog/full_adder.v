module fa (
    input a, b, cin, output sum, cout
);
    assign {cout, sum} = a + b + cin;
endmodule