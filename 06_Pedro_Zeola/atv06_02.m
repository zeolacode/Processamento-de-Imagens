%% Atividade 06

clear all; close all; clc

% Ex - 02

image1 = zeros(512,512);
image1(206:305,206:305) = 255;
imag_1 = image1;
%figure
%imshow(imag_1), title('Centro');

image2 = zeros(512,512);
image2(305:404,305:404) = 255;
imag_2 = image2;
%figure
%imshow(imag_2), title('Rotação');

image3 = zeros(512,512);
image3(206:306,351:450) = 255;
imag_3 = image3;
%figure
%imshow(imag_3), title('Translação');

I_1 = double(imag_1);
I_2 = double(imag_2);
I_3 = double(imag_3);

% DFT 2D I_1
dft_I_1 = fft2(I_1);
% Reposicionamento (shifiting)
dfts_I_1 = fftshift(dft_I_1);
% Magnitude
dftsm_I_1 = abs(dfts_I_1);
% Visualização
dftsm_I_1 = mat2gray(log(1+dftsm_I_1));

figure
imshow(I_1)
title('Imagem de entrada I_1')
figure
imshow(dftsm_I_1)
title('DFT 2D I_1')

% DFT 2D I_2
dft_I_2 = fft2(I_2);
dfts_I_2 = fftshift(dft_I_2);
dftsm_I_2 = abs(dfts_I_2);
dftsm_I_2 = mat2gray(log(1+dftsm_I_2));

figure
imshow(I_2)
title('Imagem de entrada I_2')
figure
imshow(dftsm_I_2)
title('DFT 2D I_2')

% DFT 2D I_3
dft_I_3 = fft2(I_3);
dfts_I_3 = fftshift(dft_I_3);
dftsm_I_3 = abs(dfts_I_3);
dftsm_I_3 = mat2gray(log(1+dftsm_I_3));

figure
imshow(I_3)
title('Imagem de entrada I_3')
figure
imshow(dftsm_I_3)
title('DFT 2D I_3')


