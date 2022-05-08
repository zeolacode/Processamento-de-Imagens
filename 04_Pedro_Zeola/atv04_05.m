%% Atividade 04

% Ex: 05

clear all; close all; clc

I = imread('gDSC04422m16.png');
[J,T] = histeq(I);

x = T/240*320

mu = 0;
sigma = 1;
y = cdf('Normal',x,mu,sigma);

ty = uint8(y*255);

I_eq = intlut(I, ty);

imshow(I_eq); title('I equalizada')

