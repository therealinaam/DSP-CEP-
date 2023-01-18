function [M]=mid(image,m,n)

I=rgb2gray(image);
F =ordfilt2(I,m*n,ones(m,n));
G =ordfilt2(I,1,ones(m,n));
M = (F+G)/2;
