%% Atividade 04

% Ex: 04

clear all; close all; clc

I = imread('gDSC04422m16.png');

J = histeq(I,256);
imshowpair(I,J,'montage')
axis off

