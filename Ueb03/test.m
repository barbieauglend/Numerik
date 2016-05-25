% Test der Methode anhand der gegebenen f(x)

X_i = (-1 : 2/5 : 1); %Stützpunkten
s = -1; %start
e = 1; %ende

h_5 = 1/25; % Schritte für n = 5
h_10 = 1/50; % Schritte für n = 10
h_18 = 1/90; % Schrittte für n = 18
h_24 = 1/120; % Schritte für n = 24

%Basistestskript für f(x)

F = (1+25*X.^2).^(-1);
size(X_i);

X_5 = (s : h_5 : e);
X_10 = (s : h_10 : e);
X_18 = (s : h_18 : e);
X_24 = (s : h_24 : e);

a = coeff(X_i,F);

y_5 = horner(X_i,a,X_5);
y_10 = horner(X_i,a,X_10);
y_18 = horner(X_i,a,X_18);
y_24 = horner(X_i,a,X_24);

figure;
hold all;
plot(X, F, 'linewidth', 2);
plot(X, y_5, ':', 'linewidth', 2);
plot(X, y_10, '--', 'linewidth', 2);
plot(X, y_18, '-.', 'linewidth', 2);
plot(X, y_24, ':or', 'linewidth', 2);
plot(X, F, 'gs');
legend('f(x)', 'Horner-Schemas n = 5', 'Horner-Schemas n = 10', 'Horner-Schemas n = 18', 'Horner-Schemas n = 24', 'Stuetzstellen');
title('Interpolationstest');

%Basistestskript für g(x)

G = (sin(4*X) + 4*cos(X));
size(X_i);

X_5 = (s : h_5 : e);
a = coeff(X_i,G);
y = horner(X_i,a,X);

figure;
hold all;
plot(X, G, 'linewidth', 2);
plot(X, y, ':', 'linewidth', 2);
plot(X, G, 'gs');
legend('g(x)', 'Horner-Schemas', 'Stützstellen');
title('Interpolationstest');
