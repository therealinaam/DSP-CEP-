function [image]=morwater(image)
image=rgb2gray(image);
image=watershed(image);

