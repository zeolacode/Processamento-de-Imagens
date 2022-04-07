%% Atividade - 03

% Ex: 04

clear all; close all; clc

g = imread('42049_20-200.png');

figure, imshow(g)

crop = g(85:276,180:282);
figure, imshow(crop)

imwrite(crop, 'submatriz.png');

g2 = g;
g2(85:276,180:282) = 0;
figure, imshow(g2)