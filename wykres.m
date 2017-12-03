f = [0:0.1:1.5e4];
R1=0.45e1;
R2=0.9e4;
R3=1e7;
Rs1=60;
Rs2=1000;
a=0.46;
C11=a*1e-5;
C12=C11;
C21=a*1e-8;
C22=C21;
C0=2*a*1e-11;
T = transmitancja(R1, R2, R3, Rs1, Rs2,  C11, C12, C21, C22, C0, f);
T = 20*log10(T);
plot(f, T)
grid on