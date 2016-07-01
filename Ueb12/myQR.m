function [Q,R] = myQR(A)

[m,n] = size(A);

Q = zeros(m,n);
R = zeros(n,n);

for j=1:n
v = A(:,j);

  for i=1:j-1
  R(i,j) = Q(1,i)*A(1,j);
    
    for k=2:m
    R(i,j) = R(i,j) + Q(k,i)*A(k,j);
    end
    
    for k=1:m
    v(k) = v(k) - R(i,j)*Q(k,i);
    end
  end
  
  R(j,j) = norm(v);
  Q(:,j) = v/(R(j,j) + eps);
  
end