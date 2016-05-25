function y = bary(X,x,f,lam)

% Wertet das Polynom aus.
% bary: erwartet als Eingabe einen Vektor X an dessen Einträgen das Polynom P_n ausgewertet
% werden soll, die Stützstellen x_0...x_n , die zugehörigen Funktionswerte f_0...f_n und die
% Gewichte λ_0...λ_n. Ausgabe ist dann y = P_n (X).

n = length(X);
y = zeros(1,n);

for i=1:n
    var = 0;
    summe1 = 0;
    summe2 = 0;
    for j = 1:n-1
        if X(i) == x(j)
            y(i) = f(j);
            var = 1;
        else
            summe1 = summe1 + (lam(j)*f(j))/(X(i) - x(j));
            summe2 = summe2 + (lam(j)/(X(i) - x(j)));
        end
    end    
    if var == 0
        y(i) = summe1/summe2;
    end    
end