% a05_b_02 [script]

clear all, close all, clc
%Cria imagem
nr = 16; nc = 16;
a = triu(ones(nr,nc))*64;
b = tril(ones(nr,nc),-1)*192;
g = uint8(a+b);
%M�dia zero e desvio padr�o 20
gg = imnoise(g,'gaussian',...
    (0/255),(20/255)^2);
%Filtro da m�dia
h = fspecial('average', [3 3]);
ggm1 = imfilter(gg, h, 'symmetric');
h = fspecial('average', [7 7]);
ggm2 = imfilter(gg, h, 'symmetric');
%Display
figure, image(g), colormap(gray(256))
title('Original','FontWeight','bold')
figure, image(gg), colormap(gray(256))
title('Com ru�do','FontWeight','bold')
figure, mesh(double(g),'EdgeColor','black')
title('Original','FontWeight','bold')
figure, mesh(double(gg),'EdgeColor','black')
title('Com ru�do','FontWeight','bold')
figure, mesh(double(ggm1),'EdgeColor','black')
title('M�dia 3x3','FontWeight','bold')
figure, mesh(double(ggm2),'EdgeColor','black')
title('M�dia 7x7','FontWeight','bold')
x = 1:size(g,2);
i = ceil(size(g,1)/2);
figure
plot(x,g(i,:),x,gg(i,:),...
    x,ggm1(i,:),x,ggm2(i,:)),
legend('Original','Com ru�do',...
    'M�dia 3x3', 'M�dia 7x7')
title(['Perfil da linha ',...
    num2str(i)],'FontWeight','bold')

