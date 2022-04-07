%% Atividade 04

% Ex: 01

clear all; close all; clc

img = imread('vpfig.png');

%Piecewise Linear
y1 = uint8(zeros([1 256]));
y1(1:97) = (1/3)*(0:96);
y1(98:161) = 3*(97:160) - 256;
y1(162:256) = (1/3)*(161:255) + 170;

img2 = intlut(img, y1);


subplot(2,2,1);
imshow(img); title('Original');
subplot(2,2,2)
imshow(img2); title('Piecewise-linear')