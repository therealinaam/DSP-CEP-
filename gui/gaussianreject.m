function [m]=gaussianreject(image,fc1,fc2)


h = gaussianhigh(image,fc2);
 j = gaussianlow(image,fc1);
  m=h+j;
 