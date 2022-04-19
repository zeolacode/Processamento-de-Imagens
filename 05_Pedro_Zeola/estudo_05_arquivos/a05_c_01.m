% a05_c_01 [script]

clear all; close all; clc

[X,Y] = meshgrid(-10:10, -10:10);

sigma = 1; %desvio padr�o
v = sigma^2; %vari�ncia
gauss1 = (1/(2*pi*v))*exp(-(X.^2+Y.^2)/(2*v));

sigma = 2; %desvio padr�o
v = sigma^2; %vari�ncia
gauss2 = (1/(2*pi*v))*exp(-(X.^2+Y.^2)/(2*v));

sigma = 3; %desvio padr�o
v = sigma^2; %vari�ncia
gauss3 = (1/(2*pi*v))*exp(-(X.^2+Y.^2)/(2*v));

sigma = 4; %desvio padr�o
v = sigma^2; %vari�ncia
gauss4 = (1/(2*pi*v))*exp(-(X.^2+Y.^2)/(2*v));

%Display
figure,
mesh(gauss1, 'EdgeColor', 'black')
title('sigma=1')

figure,
mesh(gauss2, 'EdgeColor', 'black')
title('sigma=2')

figure,
mesh(gauss3, 'EdgeColor', 'black')
title('sigma=3')

figure,
mesh(gauss4, 'EdgeColor', 'black')
title('sigma=4')
