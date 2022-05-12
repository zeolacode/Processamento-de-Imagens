
clear, close all, clc

g(:,:,1) = double(imread('sin07.png'));
g(:,:,2) = double(imread('sin08.png'));
g(:,:,3) = double(imread('sin09.png'));
g(:,:,4) = double(imread('sin10.png'));
g(:,:,5) = double(imread('sin13.png'));
g(:,:,6) = double(imread('sin14.png'));
g(:,:,7) = imlincomb(1/2, g(:,:,5), 1/2, g(:,:,6));
g(:,:,8) = imlincomb(1/2, g(:,:,4), 1/2, g(:,:,5));

%sem log para visualizar
for i = 1:8
  ft = fft2(g(:,:,i));
  fts = fftshift(ft);
  ftsa = abs(fts);
  viewg = im2uint8(mat2gray(g(:,:,i)));
  figure, imshow(viewg), title(num2str(i), "fontsize", 18);
  viewft = im2uint8(mat2gray(ftsa));
  figure, imshow(viewft,colormap(hot(256))), title(['Fourier ' num2str(i)], "fontsize", 18)
  colorbar
end
