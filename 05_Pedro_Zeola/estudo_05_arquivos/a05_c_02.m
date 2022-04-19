% a05_c_02 [script]

clear all; close all; clc;
%Par�metros: 'gaussian', [dimens�es], vari�ncia
h1 = fspecial('gaussian', [3 3], 0.5);
sum(h1(:)) %(=1)s� pra notar normaliz.
h2 = fspecial('gaussian', [5 5], 1);
sum(h2(:)) %(=1)s� pra notar normaliz.
h3 = fspecial('gaussian', [11 11], 2);
sum(h3(:)) %(=1)s� pra notar normaliz.
%Display
figure, bar3(h1)
title('h1: fspecial [3 3], 0.5')
figure, bar3(h2)
title('h2: fspecial [5 5], 1')
figure, bar3(h3)
title('h3: fspecial [11 11], 2')
