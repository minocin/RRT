OPENQASM 2.0;
include "qelib1.inc";
qreg q[4]; creg c[4];
x q[0]; x q[3];
measure q -> c;
