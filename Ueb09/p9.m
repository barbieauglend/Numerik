graphics_toolkit('gnuplot');
clear all
close all

f = @(x) exp(x);
a = -3;
b = 3;



[area, ierror] = quad(f,-3,3);
for i = 1:6
for j = 1:10
v(i,j)= gaussInt(f, a, b, i-1,2^J);
err(i,j) = area - v(i,j);
end
end

figure
loglog(err, 'bx', 'MarkerSize', 2);
legend('Stützstellen');
