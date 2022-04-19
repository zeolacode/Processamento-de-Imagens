%% Atividade 05

clear all; close all; clc

% Ex - 07

g = imread('flowervaseg.png');
% Imfilter retorna imagem da mesma clase da
% de entrada. Se g fosse uint8 o imfilter
% truncaria os valores de saída e a
% visualização da convolução
% seria comprometida. Por isso:
gd = im2double(g);

% Laplaciano direto 
%    0    -1     0
%   -1     4    -1
%    0    -1     0
h = fspecial('laplacian', 0)*(-1)

gdL = imfilter(gd, h, 'replicate');
gdLs = gd - gdL;
% gdLsu = im2uint8(gdLs); %trunca

%Display
figure, imshow(g)
title('Original')

% mat2gray apenas para a
% visualização do Laplaciano
gdLn = mat2gray(gdL);
figure, imshow(gdLn)
title('Laplaciano')

normalize_out = mat2gray(gdLs);
figure, imshow(normalize_out)
title('Realce')

