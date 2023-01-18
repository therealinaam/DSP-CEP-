function [G] = minf(image,m,n)


I=rgb2gray(image);
G =ordfilt2(I,1,ones(m,n));
