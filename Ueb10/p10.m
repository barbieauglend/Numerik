graphics_toolkit('gnuplot');
clear all
close all

f = @(x,y) exp(x)*cos(y);
b1 = 0;
c1 = 0.5;
b2 = -0.5;
c2 =  0.5;



for i = 1:6
[ A, X, Y ] = gauss2d(i, b1, c1, b2, c2);
[area, ierror] = quad2d(A, X, b1, c1, b2, c2);
v(i)= gaussApply2d(f, A, X, Y);
err(i) = area - v(i);
end

figure
loglog(err, 'bx', 'MarkerSize', 2);
legend('Stützstellen');