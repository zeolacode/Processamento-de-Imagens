% a02_08 [script]

clear all; close all; clc

g = checkerboard;
figure, imshow(g);

gnn = imrotate(g, 45, 'nearest');
gbc = imrotate(g, 45, 'bicubic');


figure,
imshow(g), title('g')
figure,
imshow(gnn), title('nn')
figure,
imshow(gbc), title('bc')