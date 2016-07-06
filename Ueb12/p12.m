clear all;
close all;

A = (1/18)*[-7, 5, 12; 15, 51, 90; 7, 31, 6; -1, -25, 12];
b = [1, 1, 0, 0]';

x = loeseQR(A,b)
y = A\b