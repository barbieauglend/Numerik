function [ A, X ] = gauss(n)
	% Berechne Stützstellen und Gewichte einer Gauß-Quadraturformel mit (n+1) Stützstellen.
	
	% Tridiagonalmatrix, die die Rekursionsformel repräsentiert
	k = 1:n;
	beta = [ 0, k ./ sqrt(4 * k.^2 - 1), 0 ].';
	T = full(spdiags([ beta(2:end), beta(1:end-1) ], [ -1, 1 ], n+1, n+1));
	% Eigenwerte -> Gauß-Knoten auf [-1,1].
	X = eig(T);
	
	% Lineares Gleichungsystem für die Knoten
	q = (n:-1:0).';
	A = (vander(X).') \ (((-1).^q + 1) ./ (q + 1));
end
