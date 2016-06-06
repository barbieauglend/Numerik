function v = IterTrapez(f, a, b, n)

h = (b-a)/(n);
x = linspace(a,b,h);

S = 0;
S = (f(x(1))+f(x(length(x))))/2;
for i=2:length(x)-1
   S = S + f(x(i));
end

S = S*h;
v = S;