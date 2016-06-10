function v = Romberg(f,a,b,n)

h=b-a;

R(1,1)=h*(f(a)+f(b))/2;

for i=2:n;
  p=2^(i-2);
  x=a-.5*h+h*(1:p);
  R(2,1)=(R(1,1)+h*sum(f(x)))/2;
  for  j=2:i;
    R(2,j)=R(2,j-1)+(R(2,j-1)-R(1,j-1))/(4^(j-1)-1);
   end;
  h=h/2;
  R(1,1:i)=R(2,1:i);
end;

v=R(1,n);