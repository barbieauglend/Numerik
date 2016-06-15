function [ At, Xt ] = transformQF(A, X, a, b, at, bt)

At = ((bt - at)/(b - a))*A;

for i = 1 : length(X)
  Xt(i) = at + ((bt-at)/(b-a))*(X(i)-a);
end