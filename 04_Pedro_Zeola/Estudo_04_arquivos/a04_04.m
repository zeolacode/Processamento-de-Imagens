% a04_04 [script]

clear all; close all; clc

i = imread('42049_20-200.png');
figure, imshow(i), title('original')

i2 = mat2gray(i);
figure, imshow(i2), title('mat2gray')

%Function: imadjust (I, [low_in; high_in],[low_out; high_out])
%https://www.mathworks.com/help/images/ref/imadjust.html
i3 = imadjust(i, [double(min(i(:)))/255; double(max(i(:)))/255], [0;1]);
figure, imshow(i3), title('imadjust auto-contraste (normalização, igual mat2gray)')

i4 = imadjust(i, stretchlim(i, 0.2), [0;1]);
figure, imshow(i4), title('imadjust 20% saturação, default é 1% (ver lá na doc da func imadjust)')
%https://www.mathworks.com/help/images/ref/imadjust.html
%J = imadjust(I) maps the intensity values in grayscale image I to new
%values in J. By default, imadjust saturates the bottom 1% and the top 1%
%of all pixel values. This operation increases the contrast of the output
%image J.

f = double(i);
fmin = min(f(:));
fmax = max(f(:));
i5 = uint8((f-fmin)/(fmax-fmin) * 255);
figure, imshow(i5), title('auto-contraste (normalização) equação')
