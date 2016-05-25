% Author: barbie <barbie@bigsparkle>
% Teste die Funktion hermite3 

clear all;

%lambda = [1 10 20 40 80];
x = [0 2];

y1 =@(x) exp(-1*x); y1 = y1(x); 
y10 =@(x) exp(-10*x); y10 = y10(x);
y20 =@(x) exp(-20*x); y20 = y20(x);
y40 =@(x) exp(-40*x); y40 = y40(x);
y80 =@(x) exp(-80*x); y80 = y80(x);


df1 =@(x) -1*exp(-1*x); df1 = df1(x);
df10 =@(x) -10*exp(-10*x); df10 = df10(x);
df20 =@(x) -20*exp(-20*x); df20 = df20(x);
df40 =@(x) -40*exp(-20*x); df40 = df40(x);
df80 =@(x) -80*exp(-80*x); df80 = df80(x);
    
h1 = hermite3(x,y1,df1));
h10 = hermite3(x,y10,df10));
h20 = hermite3(x,y20,df20));
h40 = hermite3(x,y40,df40));
h80 = hermite3(x,y80,df80));

figure(1)
hold on


x=[0:2]
% get real function
ipp1 = hermite(xi,yi,yprime,x);

   
   % calculate maximum pointwise difference
   error_max = max(abs(ipp1-f));
   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % visualisation: plot f and ipp1
   figure_handle=figure;
   %%%%%%%%%%%%%%%%%%
   % plot for matlab
   plot_handle=plot(x,f,'b-.',x,ipp1,'r',xi,yi,'ko');
     set(plot_handle,'LineWidth',2);
     set(gca,'LineWidth',2,'FontWeight','bold');
     titel = sprintf('Hermite-interpolation with %2i nodes',numberOfIntervals+1);
     title([titel ' auf [0;4\pi]']);
     legend('f(x) = sin(x)','Hermite-polynomial','interpolation nodes');
     axis auto;
     text(9.5, 0.5, ['max. error = ' num2str(error_max)],'FontWeight','bold');
   %%%%%%%%%%%%%%%%%% 
   % plot for octave
%    plot(x,f,'b;f(x) = sin(x);',x,ipp1,'r;Hermite-polynomial;',xi,yi,'co;interpolation nodes;');     
%      titel = sprintf('Hermite-interpolation with %2i nodes',numberOfIntervals+1);
%      title(titel);