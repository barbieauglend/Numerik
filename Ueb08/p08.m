function p08 
graphics_toolkit('gnuplot');

clear all;
close all;

f = @(x) log(x); %Funktion
a = 1;            % Grenzen
b = 2;
n = 8; %Anzahl der Abschnitte

exa = quad(f,a,b);

for i = 1 : n
  itr(i) = IterTrapez(f,a,b,i);
  fehtr(i)= exa - itr(i);
  isi(i) = IterSimpson(f,a,b,i);
  fehsi(i) = exa - isi(i);
  iro(i) = Romberg(f,a,b,i);
  fehiro(i) = exa - iro(i);
end

figure
loglog(fehtr, 'rx', 'MarkerSize', 2, fehsi, 'bx', 'MarkerSize', 2, fehiro, 'mx', 'MarkerSize', 2);
legend('Trapezregel', 'Simpson-Regel', 'Romberg-Verfahren');

for i = 1 : n
  itr(2^i) = IterTrapez(f,a,b,2^i);
  fehtrb(2^i)= exa - itr(2^i);
  isi(2^(i-1)) = IterSimpson(f,a,b,2^(i-1));
  fehsib(2^(i-1)) = exa - isi(2^(i-1));
end

figure
loglog(fehtrb, 'rx', 'MarkerSize', 2, fehsib, 'bx', 'MarkerSize', 2, fehiro, 'mx', 'MarkerSize', 2);
legend('Trapezregel', 'Simpson-Regel', 'Romberg-Verfahren');