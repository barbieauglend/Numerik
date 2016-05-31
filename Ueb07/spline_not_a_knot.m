% Author: Thais <thais@BeeSparkle>
% Created: 2016-05-30

function M = spline_not_a_knot (x, f)

n = length (x);
M = zeros(n-1,4);

h = x(2:n) - x(1:n-1);


% set up the tridiagonal linear system to solve
%
d0 = 2*(h(1:n-2)+h(2:n-1)); % diagonal
d1 = h(2:n-2);              % super and sub diagonal

A = diag(d0,0) + diag(d1,-1) + diag(d1,1);
b = 3*(f(3:n)-f(2:n-1)./h(2:n-1) - 3*(f(2:n-1)-f(1:n-2))./h(1:n-2));

A(1,1) = h(1)^2/h(2) + 3*h(1) + 2*h(2);
A(1,2) = -h(1)^2/h(2) + h(2);
A(end,end-1) = (h(end-1) -h(end)^2/h(end-1));
A(end,end) = 2*h(end-1) + 3*h(end) + h(end)^2/h(end-1);

%LGS

z = A\b;

z0 = z(1) - z(2)*h(1)/h(2) + z(1)*h(1)/h(2);
zN = z(end)*h(end)/h(end-1) - z(end-1)*h(end)/h(end-1) + z(end);
z = [z0;z;zN];

%z = z';

M(:,1) = f(1:n-1);
M(:,2) = (f(2:n)-f(1:n-1))./h - h.*(z(2:n)+2*z(1:n-1))/3;
M(:,3) = z(1:n-1);
M(:,4) = (z(2:n)-z(1:n-1))./(3*h);

end
