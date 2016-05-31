clear
clf reset

hold on

x = -5:0.5:20;
f =@(x) exp(-(x.^2/2));

X = -5:0.01:20;
n = length(x);

Mn= zeros(1,n);
Mk = zeros(1,n);

S_nat= zeros(1,n);
S_nak = zeros(1,n);

Mn = spline_natural(x,f(x));
Mk = spline_not_a_knot(x,f(x));

for k = 1:n
  S_nat(k) = spline_eval(x',f(x)',Mn,X(k));
  S_nak(k) = spline_eval(x',f(x)',Mk,X(k));
end

f5 = exp(-(X.^2/2));
plot(X,f5,'m', x,S_nat,'g', x,S_nak,'r');
legend('Exakt','Natural','Not-a-Knot')

