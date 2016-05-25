clear all;

% Funktion 
f = @(x) sin(100*x);
n=500;
t=linspace(-1,1,n);

ft = f(t);

xi = (2*(0:n)/n)-1; % Stützstellen
fi = f(xi);
lami = baryGew(xi);
pyi = bary(t, xi, fi, lami); 

xj = cos((2*(0:n)+1)*pi/(2*n+2)); % Tschebyscheff Knoten
fj = f(xj);
lamj = baryGew(xj);
pyj = bary(t, xj, fj, lamj); 

% Methoden aus PA03

ai = coeff(xi,fi); % Stützstellen
yi = horner(xi, ai, t);


aj = coeff(xj,fj); % Tschebyscheff Knoten
yj = horner(xj, aj, t);

figure;
hold all;
x = linspace(0, 0.5, 400);
plot(t, ft, 'r.', t, pyi, 'markersize', 10);
legend('f(t)', 'Interpolationspolynom');

figure;
hold all;
x = linspace(0, 0.5, 400);
plot(t, ft, '*', t, pyj, 'markersize', 2);
legend('f(t)','Interpolationspolynom - TK');