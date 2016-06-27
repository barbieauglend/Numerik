function v = quadApply(f, A, X)
	v = sum(A .* f(X));
end
