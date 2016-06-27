function x = loeseLGS(A,b)

[L,R] = lr(A);

for k = 1 : size(A,2)
  for i = k+1 : size(A,1)
    if A(k,k) == 0
      disp('Verfahren nicht durchfuehrbar!');
      return;
    end
    l = A(i,k)/ A(k,k);
    A(i,:) = A(i,:) - l * A(k,:);
    b(i) = b(i) - l * b(k);
  end
end

n = size(R,1);
x = zeros(n,1);

x(n) =  b(n) / R(n,n);
for k = n-1 : -1 : 1
  x(k) = (b(k) - R(k,k+1:n) * x(k+1:n))/ R(k,k);
end