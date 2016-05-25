clear all;close all;clc;

x=[1 2];
N=[4 2];
y={[-5 -13 -16 24] [-16 8]} ;

% x = [0 1];
% N = [1 2];
% y = {1 [2 -1]};

% x = [0 1];
% N = [2 1];
% y = {[0 1] [1]}

[p,yc,yr] = hermite(x,N,y);

R=200;

x0=(0:R)/R * ( x ( numel ( x ))-x(1)) +x(1);
y0=polyval ( p , x0 ) ;
plot ( x0 , y0 , x , yr , ' o ' ) ;

title( ' Hermite Interpolation' ) ;
legend ( 'Interpolation' , 'Datenpunkte' ) ;