%a02_06 [script]
clear all; close all; clc

clear all; close all; clc

obj = imread('obj_gray.png');
msk = imread('msk_gray_bw.png');

figure
imshow(obj), title('obj')
figure
imshow(msk), title('msk')

% usando 'and bitwise'
mskg = im2uint8(msk);
s1 = bitand(obj,mskg);
figure,
imshow(s1), title('s1')
figure, imshow(mat2gray(s1))

% ou usando multiplicação
s2 = obj .* uint8(msk);
figure,
imshow(s2), title('s2')

% ou usando logical indexing
[nr nc] = size(obj)
s3 = uint8(zeros(nr,nc));
s3(msk) = obj(msk);
figure,
imshow(s3), title('s3')



