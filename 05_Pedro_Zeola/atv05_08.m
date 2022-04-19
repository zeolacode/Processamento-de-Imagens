%% Atividade 05

clear all; close all; clc

% Ex - 08

g = imread('flowervaseg.png');
gd = im2double(g);
h = ([1 1 1; 1 -8 1; 1 1 1])
h2 = ([0 1 0; 1 -4 1; 0 1 0])

gdL = imfilter(gd, h, 'replicate');
gdLs = gd - gdL;
gdLsu = im2uint8(gdLs);

gdL2 = imfilter(gd, h2, 'replicate');
gdLs2 = gd - gdL2;
gdLsu2 = im2uint8(gdLs2);

%Display
figure, imshow(g)
title('Original')

gdLn = mat2gray(gdL);
gdLn2 = mat2gray(gdL2);

figure, imshow(gdLn)
title('Laplaciano Invertido Extendido')

figure, imshow(gdLsu)
title('Realce - Laplaciano Invertido Extendido')

figure, imshow(gdLn2)
title('Laplaciano Invertido')

figure, imshow(gdLsu2)
title('Realce - Laplaciano Invertido')