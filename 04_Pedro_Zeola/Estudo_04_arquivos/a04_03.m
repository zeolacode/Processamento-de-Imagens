% a04_03 [script]

clear all; close all; clc

g = imread('radio.tif');
figure, imshow(g), title('g')

% Experimentando auto-contraste (normaliza��o)
gac = mat2gray(g);
figure, imshow(g), title('gac')

%Funcao log
%Logaritmo neperiano (base e)
gd = double(g); %para a sa�da ser double
g1 = log(gd+1);
figure, imshow(g1), title('g1')
mg1 = min(g1(:))
Mg1 = max(g1(:))

% Arrumando a escala
c = 1/log(255);
g2 = c*log(gd+1);
figure, imshow(g2), title('g2')
mg2 = min(g2(:))
Mg2 = max(g2(:))
