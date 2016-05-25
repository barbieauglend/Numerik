function a = coeff(x,f)

% Die Funktion coeff bestimmt die Newton Koeffizienten. Die Funktion erwartet  als  
% Eingabe  die  Stützstellen x_0 ... x_n und  die  zugehörigen  Funktionswerte
% f_0 ... f_n . Als Ausgabe liefert die Funktion die Newton-Koeffizienten
% a_0 ... a_n des Interpolationspolynoms.

i = length(f)-1;
a = f(i+1)*x+f(i);

for(k=i-1:-1:1)
    
    a = a.*x+f(k);
    
end

end