OPENQASM 2.0;
include "qelib1.inc";
qreg q[4]; creg c[4];
measure q -> c;
