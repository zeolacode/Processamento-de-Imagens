%% Atividade - 03


% Ex: 01

clear all; close all; clc

c =  imread('42049.jpg');

orig = c;

maantes = min(c(:));
Mantes = max(c(:));

cL = c < 20;
c(cL) = 20;
cL = c > 200;
c(cL) = 200;

figure, imshow(orig), title('orig')
figure, imshow(c), title('c')

mdepois = min(c(:));
Mdepois = max(c(:));

imwrite(c, '42049_20-200.png');

