%%
function y = horner(x,a,X)
n = length(a);
%y=ones(size(X))*a(end);
y=0*X + a(end);
for k = n-1:-1:1
    y = a(1,k)+(X-x(k)).*y;
end
end