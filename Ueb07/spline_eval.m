function y = spline_eval(x,f,M,X)

n = length(x);

for i = 1:n-1
if X >= x(i) && X <= x(i+1)
y = M(i,1) + M(i,2)*(X-x(i)) + M(i,3)*(X-x(i))^2 + M(i,4)*(X-x(i))^3;
end
end