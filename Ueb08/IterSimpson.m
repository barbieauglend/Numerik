function v = IterSimpson(f, a, b, n)

h = (b-a)/(2*n);
x = a:h:b;
e = length(x);

S = 0;
S = f(x(1));
if n > 1 
  S = S + 4*(f(x(2))) + f(x(e));
  for i=1:(n-1)
    S = S + 2*(f(x(2*i+1)) + 2*f(x(2*i+2)));
  end
end

S = S*h/3;
v = S;