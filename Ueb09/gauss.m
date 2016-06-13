function [A, X] = gauss(n)

%Für n Stützstellen
%beta = 0.5 ./ sqrt ( 1 - ( 2 * ( 1:n-1 ) ) .^ (-2) );
%tri = diag ( beta, 1 ) + diag ( beta, -1 );
%[ eigval, eigvec ] = eig ( tri );
%X = diag ( eigvec );
%[ X, i ] = sort ( X );
%X = X';
%A = 2 * eigval(1,i) .^ 2;

b = 0.5 ./ sqrt( 1 - (2*(1:n)) .^ (-2) );
[ V , Lambda ] = eig( diag(b,1) + diag(b,-1) );
[ X , i ] = sort( diag(Lambda) );
W = 2 * V(1, i) .^ 2 ;
end