%% Atividade 06

clear all; close all; clc

% Ex - 03

f = imread('cameraman.tif');
[nr nc] = size(f);
fd = double(f);

% DFT 2D
F = fft2(fd);
% Reposicionamento (shifiting)
F = fftshift(F);

% Filtro Gaussiano
sigma = 40;
Hpb = fspecial('gaussian',[nr nc], sigma);
Hpb = mat2gray(Hpb);

% Multiplicação ponto-a-ponto
Gpb = F .* Hpb;

% DFT 2D inversa
gpb = ifft2(Gpb);
% Magnitude e visualização
gpb = mat2gray(abs(gpb));

% Display
figure, imshow(f)
title('Imagem de entrada')
figure,
imshow(mat2gray(log(1+abs(F))))
title('DFT da imagem')
figure, imshow(mat2gray(Hpb))
title('Filtro PB Gaussiano')
figure, imshow(gpb)
title('Saída PB')
