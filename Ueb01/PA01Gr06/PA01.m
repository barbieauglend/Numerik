%Tabelarische Darstellung des relativen Fehlers ohne dist

PA01a = [relfehler(3,-5.5), relfehler(3,5.5), relfehler(3,0.5);
     relfehler(6,-5.5), relfehler(6,5.5), relfehler(6,0.5);
     relfehler(9,-5.5), relfehler(9,5.5), relfehler(9,0.5)]

 myAnswer = 'Die Fehlerquelle ist die Auslöschung, \n da wegen der in diesem Fall alternierenden Vorzeichen in der \n Reihenentwicklung annähernd gleich große Zahlen voneinander abgezogen werden.';
 
 fprintf(myAnswer);
 
 PA01b = [optmierunga(3), optmierungb(3);
     optmierunga(6), optmierungb(6);
     optmierunga(9), optmierungb(9)]