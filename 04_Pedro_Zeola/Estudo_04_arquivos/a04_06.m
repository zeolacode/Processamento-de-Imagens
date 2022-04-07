% a04_06 [script]

clear all; close all; clc

g1 = imread('gDSC04422m16.png');
figure
subplot(2,1,1), imshow(g1), title('gDSC04422m16')
subplot(2,1,2), imhist(g1), title('histograma')

g2 = imread('42049_20-200.png');
figure
imshow(g2), title('42049-20-200')
figure
imhist(g2), title('42049-20-200 hist')
figure
imhist(g2), title('42049-20-200 hist auto')
ylim auto %ajusta eixo y

g3 = imread('vpfig.png');
figure
imshow(g3), title('vpfig')
figure
imhist(g3), title('vpfig hist auto')
ylim auto %ajusta eixo y

% Pode-se obter os valores do histograma 
[counts, binLocations] = imhist(g2); %fazer tb com hist
figure
stem(binLocations,counts,'Marker','none'), title('usando stem');
ylim auto
xlim([0 255])
npixels = numel(g2)
somah = sum(counts)
