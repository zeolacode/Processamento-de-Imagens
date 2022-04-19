% a05_02 [script]

clear all; close all; clc;

%Par�metros: 'gaussian', [dimens�es], vari�ncia
h1 = fspecial('gaussian', [11 11], 0.5);
sum(h1(:)) %(=1)s� pra notar normaliz.
h2 = fspecial('gaussian', [11 11], 2);
sum(h2(:)) %(=1)s� pra notar normaliz.
h3 = fspecial('gaussian', [11 11], 5);
sum(h3(:)) %(=1)s� pra notar normaliz.
h4 = fspecial('gaussian', [11 11], 30);
sum(h4(:)) %(=1)s� pra notar normaliz.

figure
x = -5:5;
i = 5;
plot(x,h1(i,:),x,h2(i,:),...
    x,h3(i,:),x,h4(i,:)),
legend('0.5','2',...
    '5', '30')
title(['Perfil da linha ',...
    num2str(i)],'FontWeight','bold')