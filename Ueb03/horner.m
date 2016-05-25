function y = horner(x, a, X)

% Die Funktion horner wertet das Newton-Polynoms unter Verwendung der
% Horner-Schemas aus.
% horner erwartet  als  Eingabe  die  Stützstellen x_0 ... x_n,
% die  Newton-Koeffizienten a_0 ... a_n und einen Vektor X an 
% dessen Einträgen das Polynom P_n ausgewertet werden soll. 
% Ausgabe ist dann y = P_n(X).

n = length(x);

y = a(n);

    for(k=n-1:-1:1)
    
        y = a(k) + (X - x(k)).*y;
        
    end


end

