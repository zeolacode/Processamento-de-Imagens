%% Atividade 03 

% Ex: 03

clear all; close all; clc

g=imread('42049_20-200.png');
gm = mat2gray(g);


subplot(2,2,1);
imshow(g); title('Original');


subplot(2,2,2)
imshow(gm); title('Autocontrast')


