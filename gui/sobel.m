function [m]= sobel(image)

m=rgb2gray(image);
m=im2double(m);
m=edge(m,'sobel');
