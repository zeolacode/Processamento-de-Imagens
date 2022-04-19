%% Atividade 05

clear all; close all; clc

% Ex - 04

img = imread('salt-and-pepper1.tif');

hm3 = fspecial('average', [3 3]); % média 3x3
hm5 = fspecial('average', [5 5]); % média 5x5

J = medfilt2(img);
g1hm3 = imfilter(img, hm3);
g1hg5 = imfilter(img, hm5);

figure
subplot(1,3,1), imshow(J), title('mediana')
subplot(1,3,2), imshow(g1hm3), title('média 3x3')
subplot(1,3,3), imshow(g1hg5), title('média 5x5')
