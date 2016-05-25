%%
function a = coeff(x,f)
n=length(x);
a=f;

for k=2:n
    a(k:end) = (a(k:end)-a(k-1:end-1))./(x(k:end) - x(1:end-k+1));
end
end
