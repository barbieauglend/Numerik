% Author: barbie <barbie@bigsparkle>
% Teste die Funktion hermite3 

%k = [3 4 10 20 40 80];

clear all;
close all;
clc;

x = [0 2];

g3 =@(x) x.^3; g3x = g3(x); 
g4 =@(x) x.^4; g4x = g4(x);
g10 =@(x) x.^10; g10x = g10(x); 
g20 =@(x) x.^20; g20x = g20(x); 
g40 =@(x) x.^40; g40x = g40(x); 
g80 =@(x) x.^80; g80x = g80(x); 


dg3 =@(x) 3*(x.^2); dg3 = dg3(x);
dg4 =@(x) 4*(x.^3); dg4 = dg4(x);
dg10 =@(x) 10*(x.^9); dg10 = dg10(x);
dg20 =@(x) 20*(x.^19); dg20 = dg20(x);
dg40 =@(x) 40*(x.^39); dg40 = dg40(x);
dg80 =@(x) 80*(x.^79); dg80 = dg80(x);

gh3 = hermite3(x,g3x,dg3);
gh4 = hermite3(x,g4x,dg4);
gh10 = hermite3(x,g10x,dg10);
gh20 = hermite3(x,g20x,dg20);
gh40 = hermite3(x,g40x,dg40);
gh80 = hermite3(x,g80x,dg80);


xi = linspace(0,2,50);
pg3 = polyval(gh3, xi);
pg4 = polyval(gh4, xi);
pg10 = polyval(gh10, xi);
pg20 = polyval(gh20, xi);
pg40 = polyval(gh40, xi);
pg80 = polyval(gh80, xi);



hold on;
subplot(2,3,1), plot(xi,g3(xi),xi,pg3);
legend('g3', 'pg3');
subplot(2,3,2), plot(xi,g4(xi),xi,pg4);
legend('g4', 'pg4');
subplot(2,3,3), plot(xi,g10(xi),xi,pg10);
legend('g10', 'pg10');
subplot(2,3,4), plot(xi,g20(xi),xi,pg20);
legend('g20', 'pg20');
subplot(2,3,5), plot(xi,g40(xi),xi,pg40);
legend('g40', 'pg40');
subplot(2,3,6), plot(xi,g80(xi),xi,pg80);
legend('g80', 'pg80');


gdif3= max(abs(g3(xi)-pg3))
gdif4= max(abs(g4(xi)-pg4))
gdif10= max(abs(g10(xi)-pg10))
gdif20= max(abs(g20(xi)-pg20))
gdif40= max(abs(g40(xi)-pg40))
gdif80= max(abs(g80(xi)-pg80))