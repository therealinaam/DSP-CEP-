
function [m]= canny(image)
m=rgb2gray(image);
m=im2double(m);
m=edge(m,'canny');
