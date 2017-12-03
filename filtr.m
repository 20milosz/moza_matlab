syms Vin V1 V2 Vout R1 R2 R3 Z1 Z2 Z3
clc
eq1 = (Vin-V1)/R1 == V1/Z1 + (V1-V2)/R2;
eq2 = (V1-V2)/R2 == V2/Z2+(V2-Vout)/R3;
eq3 = (V2-Vout)/R3 == Vout/Z3           %%


V2_isol = isolate(eq3, V2);
eq2 = subs(eq2, lhs(V2_isol), rhs(V2_isol));
V1_isol = isolate(eq2, V1);
eq1 = subs(eq1, lhs(V2_isol), rhs(V2_isol));
eq1 = subs(eq1, lhs(V1_isol), rhs(V1_isol));

Vout_isol = isolate(eq1, Vout)
% Vout = Vin/(R1*((R2*R3 + R2*Z2 + R2*Z3 + R3*Z2 + Z2*Z3)/(R1*Z2*Z3) - ((R3 + Z3)/Z3 - (R2*R3 + R2*Z2 + R2*Z3 + R3*Z2 + Z2*Z3)/(Z2*Z3))/R2 + (R2*R3 + R2*Z2 + R2*Z3 + R3*Z2 + Z2*Z3)/(Z1*Z2*Z3)))
