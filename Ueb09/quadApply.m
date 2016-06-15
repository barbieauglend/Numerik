function v = quadApply(f, A, X)

v = 0;
for i = 1: length(A)
  v = v + A(i)*f(X(i));
end