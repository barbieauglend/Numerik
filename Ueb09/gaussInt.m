function v = gaussInt(f,a,b,n,N)

[A,X] = gauss(n);
ag = -1;
bg = 1;
[At,Xt] = transformQF(A,X,ag,bg,a,b);
v = quadApply(f,At,Xt);