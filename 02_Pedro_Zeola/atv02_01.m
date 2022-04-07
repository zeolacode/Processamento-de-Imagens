%% Tarefa - 02

close all; 
clear all; 
clc;

% Lendo a imagem (arquivo cameraman.tif) 
G = imread('cameraman.tif');

% Verificando o comprimento das dimensões (1 e 3) da imagem G
nr = size(G,1);
nc = size(G,2);

% Pegando as coordenadas da grid 2D com base nas coordenadas contidas nos 
% nos vetores 1:nr e 1:nc. X é uma matriz onde cada linha é uma cópia de 1:nr, 
% e Y é uma matriz onde cada coluna é uma cópia de 1:nc. 
% A grade representada pelas coordenadas X e Y tem linhas de comprimento(1:nc) 
% e colunas de comprimento(1:nr)
% X = 256×256
%
%     1     2     ...    256
%     1     2     ...    256
%     1     2     ...    256
%     1     2     ...    256
%     :     :     ...     :
%     1     2     ...     256
% Y = 256×256
%
%     1     1     ...    1
%     2     2     ...    2
%     3     3     ...    3
%     4     4     ...    4
%     :     :     ...    :
%     256   256   ...    256
[X,Y] = meshgrid(1:nr,1:nc);

% obtendo o número de elementos de [X,Y]
N = nr*nc;

% Criando uma matriz I com 3 colunas com 3 matrizes com 65536 elementos
% uma matrix transposta de X e Y e uma matriz de Ones.
I = [X(:)'; Y(:)'; ones(1,N)];

% transformando 30 graus em radianos
ang = 30*pi/180;

% Criando matriz com angulos para rotacionar a imagem
T = [ cos(ang) sin(ang) 0; -sin(ang) cos(ang) 0; 0 0 1];

% multiplicando as duas matrizes T e I
K = T*I;

% o elemento mínimo ao longo da dimensão 2 de K
temp1 = min(K, [], 2);

% Criando uma matriz 3x65536 com os valores mínimos da dimensão 2 de K
% 1.3660  -127.1340  1.0000
m = repmat(temp1, 1, N);

temp2 = K - m;
Kadj = 1 + floor(temp2);
nrOut = max(Kadj(1,:));
ncOut = max(Kadj(2,:));
Gout = uint8(zeros(nrOut, ncOut));
for k = 1:length(Kadj)
 Gout(Kadj(1,k), Kadj(2,k)) = G(I(1,k), I(2,k));
end
imshow(Gout);