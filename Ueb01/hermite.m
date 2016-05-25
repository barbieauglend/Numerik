% Musterloesung Blatt 1, Aufgabe 5 a)

function [p,yc,yr]= hermite(x,N,y) % x = Stuetzstellenvektor, N = Vektor mit Anzahl der Werte pro Stuetzstelle
                                   % y = Menge der Vektoren mit den Werten
                                   % pro Stelle
    M=sum(N) ; % Gesamtzahl der gegebenen Werte
    % Startwerte für die Iteration:
    A=zeros(M) ;
    curr=1; 
    yc=zeros (M, 1 ) ; 
    yr=zeros ( numel ( x ) , 1 ) ; 
    
    for k=1:numel ( x ) % durchlaeuft die Stuetzstellen
        for i=1:N( k ) % durchlaeuft die Werte für die k-te Stuetzstelle
            for j=i-1:M-1 % durchlaeuft die Matrixeintraege
                % Matrixeintraege werden nacheinander aufgestellt
                A(curr,(M-1)-(j-1))=x(k)^(j-(i-1))*factorial(j) / factorial(j-i+1);
            end
            yc(curr)=y{k}(i); % Vektor der Interpolationswerte
            curr = curr+1; % Startwert wird fuer den naechsten Iterationsschritt um 1 erhoeht
        end
        yr(k)= y{k}(1); % Funktionswerte an den Stuetzstellen (fuer Plot benoetigt)
    end
    p=A\yc ; % Loesung der LGS, p = Vektor der Koeffizienten im Interpolationspolynom
end