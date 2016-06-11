function v = IterTrapez(f, a, b, n)

v = (f(a)+f(b))/2;
dx = (b-a)/n;

for k=1:(n-1)
c = a+k*dx;
v = v + f(c);
end

v = dx*v;