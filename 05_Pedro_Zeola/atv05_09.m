%% Atividade 05

clear all; close all; clc

% Ex - 09

g = imread('flowervaseg.png'); 
g = double(g); 


h = fspecial('gaussian', [5 5], 1);
gg = imfilter(g, h, 'replicate');

unshmask = g - gg;

% multiplicando a imagem máscara unsharp por 5
gunsharp = g + unshmask*5;  
gunsharp = uint8(gunsharp); 


%Display
figure, imshow(g,[])
title('Original')
figure, imshow(unshmask,[])
title('Imagem máscara unsharp')
figure, imshow(gunsharp)
title('Realce')
