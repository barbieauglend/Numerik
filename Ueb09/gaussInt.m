function v = gaussInt(f,X,A)
% f		function handle
% a,b	Intervallgrenzen [a,b]
% t,w	Stützstellen und Integrationsgewichte
% s		numerisches Integral
h=1;
v=0;

for i=1:length(w)
	v = v+A(i)*f(X(i)*h);
end
