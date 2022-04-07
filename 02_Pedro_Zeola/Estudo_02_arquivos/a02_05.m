%a02_05 [script]
clear all; close all; clc

A = imread('obj_bw.tif');
B = imread('msk_bw.tif');

figure
imshow(A), title('A')
figure
imshow(B), title('B')

s1 = ~A;
s2 = ~B;
figure
subplot(2,3,1)
imshow(s1), title('not A')
subplot(2,3,2)
imshow(s2), title('not B')

s3 = A & B;
subplot(2,3,3)
imshow(s3), title('A and B')

s4 = A | B;
subplot(2,3,4)
imshow(s4), title('A or B')

s5 = xor(A,B);
subplot(2,3,5)
imshow(s5), title('A xor B')

%Em opera��es de conjuntos
%� A-B = elementos que pertencem
%a A e n�o pertencem a B.
s6 = A & (~B);
subplot(2,3,6)
imshow(s6), title('A and not(B)')
