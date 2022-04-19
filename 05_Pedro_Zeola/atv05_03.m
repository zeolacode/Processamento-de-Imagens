%% Atividade 05

clear all; close all; clc

% Ex - 03

% máscara de convolução do filtro Gaussiano 5x5 e sigma 1


sigma = 1;
sz = 2;
[x,y]=meshgrid(-sz:sz,-sz:sz);

M = size(x,1)-1;
N = size(y,1)-1;
Exp_comp = -(x.^2+y.^2)/(2*sigma*sigma);
hm5 = exp(Exp_comp)/(2*pi*sigma*sigma)

figure
mesh(hm5)

img1 = imread('b5s.100.bmp');
img2 = imread('b5s.40.bmp');

img1hm5 = imfilter(img1, hm5);
img2hm5 = imfilter(img2, hm5);

figure
subplot(1,2,1), imshow(img1), title('original img1')
subplot(1,2,2), imshow(img1hm5), title('Filtro Gaussiano 5x5')

figure
subplot(1,2,1), imshow(img2), title('original img2')
subplot(1,2,2), imshow(img2hm5), title('Filtro Gaussiano 5x5')


