function [I]=arithmetic(image,m,n)

I= rgb2gray(image);
I = im2double(I);

w=fspecial('average',[m,n]);
I= imfilter(I,w,'replicate');