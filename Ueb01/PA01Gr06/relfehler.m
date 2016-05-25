function  deltax = relfehler(n,x)

% Die Funktion 02 berechnet den relativen Fehler für exp(x)

% n = [3 6 9]
% x = [-5.5 5.5 0.5]

deltax = (abs(myehochx(n,x)-exp(x)))/exp(x);

end

