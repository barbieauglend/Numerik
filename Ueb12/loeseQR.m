function x = loeseQR(A,b)

[Q,R] = myQR(A);

y=Q'*b;

x=R\y;