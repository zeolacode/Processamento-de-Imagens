% a04_01 [script]

clear all; close all; clc

%g = imread('grays8bit.png');
g = imread('xray01.png');
figure; imshow(g)

%Função de transformação
y = uint8(255:-1:0);
figure;
plot(y); xlim([0 255]); ylim([0 255]);
gd1 = double(g)+1;

%Aplicando
gt = y(gd1);
figure, imshow(gt)