% a05_b_01 [script]

clear all, close all, clc

g = imread('Lenna256g.png');
%m=0 e desvio padr�o = 20
gg = imnoise(g,'gaussian',(0/255),(20/255)^2);
%Apenas ru�do
s = imsubtract(double(g), double(gg));
%Para visualizar o ru�do
sviz = uint8(s + 127);
%Display
figure, imshow(g),
title('Original')
figure, imshow(gg)
title('Ru�do Gaussiano m=0 dp=20')
figure, imshow(sviz)
title('(Original)-(Com ru�do)+127')
figure, imhist(sviz)
ylim('auto'), title('Histograma do ru�do')

%S� conferindo o dp do ru�do:
dp = std(double(s(:)))