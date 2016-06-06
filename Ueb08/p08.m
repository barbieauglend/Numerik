function p08 

clear;

f = @(x) log(x);
a = 1;
b = 2;
x = linspace(0,1,100);

hold on;

for n = 1 : 8
  itr(n) = IterTrapez(f(x),a,b,n);
  plot(itr)
  iro = Romberg(f(x),a,b,n)
end

%for n = 1 : 8
%  isi(n) = IterSimpson(f(x),a,b,n);
%  plot(isi)
%end
  
