%% Atividade 05

clear all; close all; clc

% Ex - 01
% máscara de convolução do filtro da média 3x3

% dimensões da máscara
d = 3;

X = ones(d)*(1/d^2);

bar3(X)