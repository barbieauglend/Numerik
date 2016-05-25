function [res, m, err] = logln2_A(eps)
%  logln2_A berechnet log(2) nach dem ersten Vorschrift

oldres = 1;
err = eps;
m = 2;

while err >= eps
    newres = 0;
    for k=2:m
        s = (((-1)^(k-2)/k));
        newres = newres + s;
    end
    
    err = abs(newres-oldres);
    oldres = newres;
    m = m+1;
   
end
res = newres;

disp(res)
disp(m)
disp(err)
