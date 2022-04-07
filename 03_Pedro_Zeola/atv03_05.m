%% Atividade 03

% Ex: 05

clear all; close all; clc

v = 0:1:255;

v = uint8(v);

v2 = repmat(v, 50, 1);

figure, imshow(v2), title('v2');
