function [f]=geometric(image,m,n)

g=im2double(image);
g=rgb2gray(g);
f=exp(imfilter(log(g),ones(m,n),'replicate')).^(1/m/n);
