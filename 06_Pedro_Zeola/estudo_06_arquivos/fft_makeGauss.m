% C�digo original, completom dispon�vel em:
% http://courses.washington.edu/matlab1/Matlab4BS_c5.htm


clear all, close all, clc

center = [-0.2,-0.2]; %[0,0] is the middle of the image, [pi,pi] is the lower right
% GB 21.nov.2020: -0.2 -0.2 para gauss em 30,30
width = .2;  %1/e half width of Gaussian
n = 64; %resolution of the image

% Use meshgrid to define matrices X and Y that range from -pi to pi;
[X,Y] = meshgrid(linspace(-pi,pi,n));

%Gaussian envelope:
Gaussian = exp(-((X-center(1)).^2+(Y-center(2)).^2)/width^2);

% take a quick look at the gaussian
figure
imagesc(Gaussian)
colormap(gray(256))
axis off
axis equal
Gaussiann = mat2gray(Gaussian); %GB 21.nov.2020
imwrite(Gaussiann, 'myGauss.png'); %GB 21.nov.2020