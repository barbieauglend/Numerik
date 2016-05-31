% Author: Thais <thais@BeeSparkle>
% Created: 2016-05-30

function [M] = spline_natural(x,f)

n = length(x);
M = zeros(n-1,4);

h = x(2:n)-x(1:n-1);

% set up the tridiagonal linear system to solve
%
d0 = 2*(h(1:n-2)+h(2:n-1));    % diagonal
d1 = h(2:n-2);                 % super and sub diagonal

A = diag(d0,0) + diag(d1,-1) + diag(d1,1);
b = 3*(f(3:n)-f(2:n-1))./h(2:n-1) - 3*(f(2:n-1)-f(1:n-2))./h(1:n-2);

%LGS
z = A\b;

%natural condition
z = [0;z;0];
%z=z';

% compute the coefficients
M(:,1) =  f(1:n-1);
M(:,2) = (f(2:n) - f(1:n-1))./h - h.*(z(2:n)+2*z(1:n-1))/3;
M(:,3) =  z(1:n-1);
M(:,4) = (z(2:n)-z(1:n-1))./(3*h);

end