function [f]=harmonic(image,m,n)

g=im2double(image);
g=rgb2gray(g);
f=m*n./imfilter(1./(g+eps),ones(m,n),'replicate');
