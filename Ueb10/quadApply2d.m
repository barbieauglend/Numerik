function v = quadApply2d(f, A, X, Y)

v = 0;
for i = 1: length(A)
  v = v + A(i)*f(X(i));
end