clear
clf reset

hold on

n = 5;
x = -5:10/n:5;
f =@(x) exp(-(x.^2/2));

X = linspace(-5,5, 200);

Mn= zeros(1,n);
Mk = zeros(1,n);

S_nat= zeros(1,n);
S_nak = zeros(1,n);

Mn = spline_natural(x,f(x));
Mk = spline_not_a_knot(x,f(x));

for k = 1:length(X)
  S_nat(k) = spline_eval(x',f(x)',Mn,X(k));
  S_nak(k) = spline_eval(x',f(x)',Mk,X(k));
  S_spline(k) = spline(x,f(x),X(k));
end

f5 = exp(-(X.^2/2));

plot(X,f5,'m', X,S_nat,'g', X,S_nak,'r', X,S_spline, 'k');
legend('Exakt','Natural','Not-a-Knot')