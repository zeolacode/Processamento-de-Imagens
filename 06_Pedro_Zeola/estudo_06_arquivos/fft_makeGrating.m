
% Aten��o: c�digo ataptado de terceiros -------------------------------
% Fonte: Prof. Ione Fine
%  Introduction to Programming for the Behavioral Sciences Autumn 2015
% C�digo original, completom dispon�vel em:
% http://courses.washington.edu/matlab1/Matlab4BS_c5.htm
% Creates a grating where the following
% parameters can vary:
% size
% contrast
% spatial frequency
% orientation
% phase
% --------------------------------------------------------------------

clear all, close all, clc

center = [0,0]; %[0,0] is the middle of the image, [pi,pi] is the lower right
orientation = pi/4; %radians (pi/4 = 45 degrees)
width = .5;  %1/e half width of Gaussian
spatialFrequency = 4;  %spatial frequency of Sinewave carrier (cycles/image)
phase = -pi/2; %spatial phase of sinewave carrier (radians)
contrast = 0.75;  %contrast ranges from 0 to 1;
n = 64; %resolution of the image  

% Use meshgrid to define matrices X and Y that range from -pi to pi;
[X,Y] = meshgrid(linspace(-pi,pi,n));
%Create an oriented 'ramp' matrix as a linear combination of X and Y. For
%example, when orientation = 0, cos = 1 and sin = 0 so ramp = X.  When
%orientation is pi/2 then cos = 0; sin = 1 and ramp = Y. 
ramp = cos(orientation)*(X-center(1)) + sin(orientation)*(Y-center(2));

% let's take a quick look at ramp
figure
imagesc(ramp)
colormap(gray(256))
axis off
axis equal

% Sinusoidal carrier is a sinusoid on the matrix 'ramp'
sinusoid = contrast*sin(spatialFrequency*ramp-phase);

% take a quick look at the sinusoid
figure
imagesc(sinusoid)
colormap(gray(256))
axis off
axis equal 
sinusoindn = mat2gray(sinusoid);  % GB 21.nov.2020
imwrite(sinusoindn, 'myGrating.png'); % GB 21.nov.2020 