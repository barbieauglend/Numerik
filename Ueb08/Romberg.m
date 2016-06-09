function v = Romberg(f,a,b,n)

h=b-a;
T(1,1)=h*(feval(f,a)+feval(f,b))/2;

for k=1:n
  h=h/2;
  T(k+1,1)=h/2*(feval(f,a)+feval(f,b)+2*sum(feval(f,a+(1:(2^k-1))*h))); %naechstes Glied;Trapezregel
end

for k=2:n+1
  l=1;
  T(l,k)=T(l+1,k-1)+(T(l+1,k-1)-T(l,k-1))/(2.^(2*(k-1))-1);
end

v = T;
end