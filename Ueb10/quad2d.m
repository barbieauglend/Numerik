function [ A, X, Y ] = quad2d(At, Xt, b1, c1, b2, c2)

R = [b1, c1] x [b2,c2],

phi1 = b1 + (c1 - b1)*x;
phi2 = b2 + (c2 - b2)*x;

