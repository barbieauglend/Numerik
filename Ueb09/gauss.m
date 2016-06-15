function [A , X] = gauss(n)

b = 0.5./sqrt(1-(2*(1:n)).^(-2));
[V,Lambda ] = eig(diag(b,1) + diag(b,-1));
[X,i] = sort(diag(Lambda));
X = X';
A = 2*V(1,i).^2;