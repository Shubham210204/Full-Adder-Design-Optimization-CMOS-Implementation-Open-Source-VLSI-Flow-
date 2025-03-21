/* Generated by Yosys 0.33 (git sha1 2584903a060) */

(* top =  1  *)
(* src = "full_adder.v:1.1-5.10" *)
module fa(a, b, cin, sum, cout);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  (* src = "full_adder.v:2.11-2.12" *)
  input a;
  wire a;
  (* src = "full_adder.v:2.14-2.15" *)
  input b;
  wire b;
  (* src = "full_adder.v:2.17-2.20" *)
  input cin;
  wire cin;
  (* src = "full_adder.v:2.34-2.38" *)
  output cout;
  wire cout;
  (* src = "full_adder.v:2.29-2.32" *)
  output sum;
  wire sum;
  NOT _10_ (
    .A(cin),
    .Y(_06_)
  );
  NAND _11_ (
    .A(b),
    .B(a),
    .Y(_07_)
  );
  NOT _12_ (
    .A(_07_),
    .Y(_08_)
  );
  NOR _13_ (
    .A(b),
    .B(a),
    .Y(_09_)
  );
  NOT _14_ (
    .A(_09_),
    .Y(_00_)
  );
  NOR _15_ (
    .A(_08_),
    .B(_09_),
    .Y(_01_)
  );
  NAND _16_ (
    .A(_07_),
    .B(_00_),
    .Y(_02_)
  );
  NOR _17_ (
    .A(_06_),
    .B(_02_),
    .Y(_03_)
  );
  NAND _18_ (
    .A(cin),
    .B(_01_),
    .Y(_04_)
  );
  NAND _19_ (
    .A(_07_),
    .B(_04_),
    .Y(cout)
  );
  NOR _20_ (
    .A(cin),
    .B(_01_),
    .Y(_05_)
  );
  NOR _21_ (
    .A(_03_),
    .B(_05_),
    .Y(sum)
  );
endmodule
