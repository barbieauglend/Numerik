function [ res, m, err ] = logln2_B( eps )
%  logln2_b berechnet log(2) nach dem zweiten Vorschrift

oldres = 0;
err = eps;
m = 1;

while err >= eps
    newres = 0;
    
    for k=1:m
        s = (3^(1-(2*k)))/((2*k)-1);
        newres = newres + s;
    end
    
    newres = newres+newres;
    
    err = abs(newres-oldres);
    oldres = newres;
    
    m = m+1; 
end

disp(newres)
disp(m)
disp(err)
