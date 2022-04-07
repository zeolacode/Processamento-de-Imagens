%% Atividade 04

% Ex: 02

clear all; close all; clc

img = imread('vpfig.png');

%Sigmoid
slope = 0.10;
inflec = 127;
x = 0:1:255;
y1 = 1./(1 + exp(-slope*(x - inflec)));
y1n = mat2gray(y1);
y1n = uint8(y1n.*255);
%Display
figure, plot(y1n)
xlim([0 255]), ylim([0 255])
grid on
title('Sigmoide')
xlabel('x'), ylabel('y')

img2 = intlut(img, y1n);


subplot(2,2,1);
imshow(img); title('Original');
subplot(2,2,2)
imshow(img2); title('Sigmoid')

