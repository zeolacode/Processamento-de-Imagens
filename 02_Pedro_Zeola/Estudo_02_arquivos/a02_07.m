%a02_07 [script]

clear all; close all; clc

g = imread('cameraman.tif');

gnn = imresize(g, 2, 'nearest');
gbc = imresize(g, 2, 'bicubic');

figure,
imshow(gnn), title('nn')
figure,
imshow(gbc), title('bc')