clear all

f = @(x) x^2 - 1;
d = @(x) x*2;
n = 100;

Newton(50, f, d, n);

F = @(x,y) [y - x^2; x^2 + y^2 - 1];
J=fsolve([y - x^2; x^2 + y^2 - 1], Jacobian)