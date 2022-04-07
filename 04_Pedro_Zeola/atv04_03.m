
%% Atividade 04

% Ex: 03

clear all; close all; clc

img = imread('42049_20-200.png');
figure(1), myimhist(img), title('myimhist')
figure(2), imhist(img), title('imhist')

function myimhist(img)
    img = im2uint8(img);

    [count,bin] = hist(img(:), 0:255);
    stem(bin,count, 'Marker','none')

    hAx = gca;
    set(hAx, 'XLim',[0 255], 'XTickLabel',[], 'Box','on')

    % cria eixos e desenhe a barra de cores em tons de cinza
    hAx2 = axes('Position',get(hAx,'Position'), 'HitTest','off');
    image(0:255, [0 1], repmat(linspace(0,1,256),[1 1 3]), 'Parent',hAx2)
    set(hAx2, 'XLim',[0 255], 'YLim',[0 1], 'YTick',[], 'Box','on')

    % redimensione o eixo para abrir espaço para a barra de cores
    set(hAx, 'Units','pixels')
    p = get(hAx, 'Position');
    set(hAx, 'Position',[p(1) p(2)+26 p(3) p(4)-26])
    set(hAx, 'Units','normalized')

    % posiciona a barra de cores na parte inferior
    set(hAx2, 'Units','pixels')
    p = get(hAx2, 'Position');
    set(hAx2, 'Position',[p(1:3) 26])
    set(hAx2, 'Units','normalized')

    % ligar os limites x dos dois eixos
    linkaxes([hAx;hAx2], 'x')
    set(gcf, 'CurrentAxes',hAx)

end




