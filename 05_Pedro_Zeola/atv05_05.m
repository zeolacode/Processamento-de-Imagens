%% Atividade 05

clear all; close all; clc

% Ex - 05
es=imread('salt-and-pepper1.tif');
b=es;
[r c]=size(es);
for i=2:r-1
    for j=2:c-1
        mat=[es(i-1,j-1),es(i-1,j),es(i-1,j+1),es(i,j-1),es(i,j),...
            es(i,j+1),es(i+1,j-1),es(i+1,j),es(i+1,j+1)];
        mat=sort(mat);
        b(i,j)=mat(5);
    end
end

figure
subplot(1,3,1), imshow(es), title('Imagem corrompida')
subplot(1,3,2), imshow(b), title('Imagem filtrada')

