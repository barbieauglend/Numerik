% data
n = 20; X = linspace(0,1,n);                    % equidistant nodes
f = rand(size(X));                              % random data

% constructing the interpolating polynomial
nonzero = @(x) x(x~=0);
om = @(y) prod(nonzero(y-X));                   % (variant of) node polynomial
for i = 1:n, lam(i) = 1/om(X(i)); end           % weights
p = @(x) sum(lam.*f./(x-X))/sum(lam./(x-X));    % 2st barycentric formula

% evaluation
y = linspace(0.001,0.999,100);                  % evaluation points
for j = 1:length(y), py(j) = p(y(j)); end
plot(X,f,'r.',y,py,'markersize',20);
axis([0 1 -1 2]);