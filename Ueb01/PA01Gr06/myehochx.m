function  expsum = myehochx(n,x)

% Die Funktion 01 berechnet den approximierten Wert für exp(x)

% n = [3 6 9]
% x = [-5.5 5.5 0.5]

expsum = 1;

for k=1:n
    s = ((x^k)/factorial(k));
    expsum = expsum + s;
end

% disp(expsum)

end

