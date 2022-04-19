% a05_01 [script]

clear all; close all; clc
%https://www.mathworks.com/help/images/ref/imfilter.html

A =  [1 1 1 1 1;...
      1 1 1 1 1;...
      1 1 1 1 1;...
      1 1 1 1 1;...
      1 1 1 1 1];
  
H = [5  5 -3;...
     5  0 -3;...
    -3 -3 -3];
 
B = imfilter(A,H) %zero-padding, corr
 
C = imfilter(A, H, 'conv')
H2 = flipud(fliplr(H))
C2 = imfilter(A, H2) %igual C
 
D = imfilter(A,H, 'replicate')
 
E = imfilter(A,H,'full')