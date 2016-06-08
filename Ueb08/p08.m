function p08 
graphics_toolkit('gnuplot');

clear;

f = @(x) log(x); %Funktion
a = 1;            % Grenzen
b = 2;
x = linspace(a,b,8); 
n = 8; %Anzahl der Abschnitte

hold on;

for i = 1 : n
  exa(i) = x(i)*f(x(i)) - x(i);
  plot(exa, 'r');
  itr(i) = IterTrapez(f(x),a,b,i);
end

%iro = Romberg(f(x),a,b,n)
%for n = 1 : 8
%  isi(n) = IterSimpson(f(x),a,b,n);
%  plot(isi)
%end
  
