clear all;
load thais.mat 

x=x';
y=y';

diffx = diff(x);
diffy = diff(y);

t = zeros(1,length(x)-1);

for n = 1:length(x)-1 
    t(n+1) = t(n) + sqrt(diffx(n).^2+diffy(n).^2);
end

tj = linspace(t(1),t(end),300);

xj = interp1(t,x,tj,'spline');
yj = interp1(t,y,tj,'spline');

xk = interp1(t,x,tj,'pchip');
yk = interp1(t,y,tj,'pchip');

hold on
plot(x,y,'b.',xj,yj,'r-', xk,yk,'g-')
legend('echte Daten','Spline', 'pchip');


%hold on
%subplot(1 ,2 ,1);plot(x,y,'b.',xj,yj,'r-')
%legend('Spline');
%subplot(1 ,2 ,2);plot(x,y,'b.',xk,yk,'r-')
%legend('Pchip')

disp('Die Abbildung 1 wurde mit Spline erstellt')