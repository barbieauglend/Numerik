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
  isi(i) = IterSimpson(f,a,b,i);
%  iro(i,i) = Romberg(f,a,b,i);
end

  fehtr = exa - itr;
  fehsi = exa - isi;

for i = 1 : n
  itr(2^i) = IterTrapez(f,a,b,2^i)
  isi(2^(i-1)) = IterSimpson(f,a,b,2^(i-1));
%  iro(i,i) = Romberg(f,a,b,i);
end
