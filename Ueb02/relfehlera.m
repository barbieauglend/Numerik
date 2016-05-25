function  deltax = relfehler(eps)

% Die Funktion berechnet den relativen Fehler für logln2_A und logln2_B

% eps = [0.01, 0.0001, 0.000001]

deltax = (abs(logln2_A(eps)-log2(2))/(log2(2)));

end

