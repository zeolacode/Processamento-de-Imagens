%% Atividade 05

clear all; close all; clc

% Ex - 02

img1 = imread('b5s.100.bmp');
img2 = imread('b5s.40.bmp');

hm5 = fspecial('average', [5 5]); % média 5x5
hm7 = fspecial('average', [7 7]); % média 7x7

img1hm5 = imfilter(img1, hm5);
img1hm7 = imfilter(img1, hm7);

img2hm5 = imfilter(img2, hm5);
img2hm7 = imfilter(img2, hm7);

figure
subplot(1,3,1), imshow(img1), title('original')
subplot(1,3,2), imshow(img1hm5), title('média 5x5')
subplot(1,3,3), imshow(img1hm7), title('média 7x7')

figure
subplot(1,3,1), imshow(img2), title('original')
subplot(1,3,2), imshow(img2hm5), title('média 5x5')
subplot(1,3,3), imshow(img2hm7), title('média 7x7')