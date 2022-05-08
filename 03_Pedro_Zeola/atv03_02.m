% Ex: 02

clear all; close all; clc

g=imread('42049_20-200.png'); 
mg=min(g(:)); Mg=max(g(:));
figure, imshow(g), title('g')
g1=double(g); mg1=min(g1(:)); 
Mg1=max(g1(:));
figure, imshow(g1); 
title('g1')
g2=im2double(g); 
mg2=min(g2(:)); 
Mg2=max(g2(:));
figure, imshow(g2), title('g2')
g3=mat2gray(g); mg3=min(g3(:)); Mg3=max(g3(:));
figure, imshow(g3), title('g3')

% Responda aqui no próprio script
% g é da classe: uint8
% Mín em g: 20, Máx em g: 200 
% g1 é da classe: double
% Mín. em g1: 20, Máx em g1: 200
% imshow(g1) mostra uma imagem: branca
% porque: ??
% g2 é da classe: double
% Mín em g2: 0.0784, Máx em g2: 0.784
% g3 é da classe: double
% Mín em g3: 0, Máx em g3: 1
% Qual é a diferença entre as funções
% im2double e mat2gray?
% im2double -> redimensiona a saída de tipos de dados inteiros para o intervalo [0, 1]
% mat2gray  -> Valores menores que amin são cortados em 0 e valores maiores que amax são cortados em 1

