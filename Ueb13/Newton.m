function x = Newton(x0, f, Df, N)

x = x0;

for k=1:N;
fx = f(x); 
Dfx = Df(x);

x = x - fx/Dfx;

end;