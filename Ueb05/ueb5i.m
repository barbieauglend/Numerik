% Author: barbie <barbie@bigsparkle>
% Teste die Funktion hermite3 

%lambda = [1 10 20 40 80];

clear all;
close all;
clc;

x = [0 2];

y1 =@(x) exp(-1*x); y1x = y1(x); 
y10=@(x) exp(-10*x); y10x = y10(x);
y20=@(x) exp(-20*x); y20x = y20(x);
y40=@(x) exp(-40*x); y40x = y40(x);
y80=@(x) exp(-80*x); y80x = y80(x);


df1 =@(x) -1*exp(-1*x); df1 = df1(x);
df10 =@(x) -10*exp(-10*x); df10 = df10(x);
df20 =@(x) -20*exp(-20*x); df20 = df20(x);
df40 =@(x) -40*exp(-20*x); df40 = df40(x);
df80 =@(x) -80*exp(-80*x); df80 = df80(x);  

h1 = hermite3(x,y1x,df1);
h10 = hermite3(x,y10x,df10);
h20 = hermite3(x,y20x,df20);
h40 = hermite3(x,y40x,df40);
h80 = hermite3(x,y80x,df80);


xi = linspace(0,2,50);
ph1 = polyval(h1, xi);
ph10 = polyval(h10, xi);
ph20 = polyval(h20, xi);
ph40 = polyval(h40, xi);
ph80 = polyval(h80, xi);

hold on;
subplot(2,3,1), plot(xi,y1(xi),xi,ph1);
legend('y1', 'ph1');
subplot(2,3,2), plot(xi,y10(xi),xi,ph10);
legend('y10', 'ph10');
subplot(2,3,3), plot(xi,y20(xi),xi,ph20);
legend('y20', 'ph20');
subplot(2,3,4), plot(xi,y40(xi),xi,ph40);
legend('y40', 'ph40');
subplot(2,3,5:6), plot(xi,y80(xi),xi,ph80);
legend('y80', 'ph80');
hold off;

dif1= max(abs(y1(xi)-ph1))
dif10= max(abs(y10(xi)-ph10))
dif20= max(abs(y20(xi)-ph20))
dif40= max(abs(y40(xi)-ph40))
dif80= max(abs(y80(xi)-ph80))