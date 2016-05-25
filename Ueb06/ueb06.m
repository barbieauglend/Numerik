clear;

figure('position',get(0,'screensize'));
axes('position',[0,0,1,1]);
[x,y] = ginput;

save('thais.mat', 'x', 'y');