%% Atividade 06

clear all; close all; clc

% Ex - 01

I = imread('cameraman.tif');

dftr = fft(I,[],1);
ffe_2 = fft(dftr,[],2);

Y = fft2(I);

figure
imagesc(abs(fftshift(ffe_2))) 

figure
imagesc(abs(fftshift(Y)))