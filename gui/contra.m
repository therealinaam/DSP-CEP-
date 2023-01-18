function [f]=contra(image,m,n,q)

g=im2double(image);
g=rgb2gray(g);
f= imfilter(g.^(q+1),ones(m,n),'replicate');
f=f./(imfilter(g.^q,ones(m,n),'replicate')+eps);
