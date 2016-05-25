function lam = baryGew(x)

% Berechnet der baryzentrischen Gewichte 
%   baryGew: erwartet als Eingabe die Stützstellen x_0...x_n . Als Ausgabe
%   liefert die Funktion die Gewichte λ_0...λ_n.

n = length(x);
lambda = ones(1,n);

nonzero = @(x) x(x~=0);
om = @(y) prod(nonzero(y-x));

for i = 1:n,
 lam(i) = 1/om(x(i)); 
end

p = @(x) sum(lam.*f./(x-X))/sum(lam./(x-X));



%for k=1:n
%    for i=1:k-1
%      lambda(i)=(x(i)-x(k));
%    end
%    for i=k+1:n
%      lambda(i)=(x(i)-x(k));
%    end
%end

%lam = 1./lambda(i);

end

