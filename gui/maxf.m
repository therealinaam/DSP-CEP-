function [F]=maxf(image,m,n)


I=rgb2gray(image);
F =ordfilt2(I,m*n,ones(m,n));
