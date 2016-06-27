function [L, R] = lr(A)

N = size(A,1); 

for n=1:N-1
   if abs(A(n,n))<eps 
      error('*** ERROR *** LR-Zerlegung existiert nicht');
   end
   % LR-Zerlegung
   A(n+1:N,n)=A(n+1:N,n)/A(n,n);
   A(n+1:N,n+1:N)=A(n+1:N,n+1:N)-A(n+1:N,n)*A(n,n+1:N);      
end

R=triu(A);
L=A-R+eye(N);

