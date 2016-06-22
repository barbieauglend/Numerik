function [ A, X, Y ] = gauss2d(n, b1, c1, b2, c2)

[Afi, Xi] = gauss(n,b1,c1);
[Ai,X] = transformQF(Afi, Xi, -1, 1, 0, 1);
[Afj, Yi] = gauss(n,b2,c2);
[Aj,Y] = transformQF(Afj, Yi, -1, 1, 0, 1);
A = Ai*Aj;
