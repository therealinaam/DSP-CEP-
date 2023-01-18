function [m]=butterworthreject(image,fc1,fc2,q)
image=im2double(image);
h = butterworthhigh(image,fc2,q);
 j = butterworthlow(image,fc1,q);
 m=h+j;
  