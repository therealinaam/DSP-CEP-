function [F] = median(image,m,n)



I=rgb2gray(image);
F=medfilt2(I,[m n]);

