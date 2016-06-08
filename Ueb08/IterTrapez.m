function v = IterTrapez(f, a, b, n)

h = (b-a)/n; %Breite
x = a:h:b; %Koordinaten Stützpunkte

S = 0;
S = (f(x(1))+f(x(n)))/2;
for i=2:n
   S = (S + f(x(i)))/2;
end

S = S*h;
v = S;