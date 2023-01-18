function [m]=idealreject(image,fc1,fc2)

h = idealhigh(image,fc2);
 j = ideallow(image,fc1);
  m=(h+j);
