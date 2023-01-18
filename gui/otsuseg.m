function [BW]= otsuseg(image)


level = graythresh(image);
BW = im2bw(image,level);
