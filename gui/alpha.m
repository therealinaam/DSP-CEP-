function [f] =alpha(image,m,n,d)


g = rgb2gray(image);
g=im2double(g);
f=imfilter(g,ones(m,n),'symmetric');
for k =1:d/2
    f= imsubtract(f,ordfilt2(g,k,ones(m,n),'symmetric'));
end
for k = (m*n-(d/2)+1):m*n
    k=round(k);
    f=imsubtract(f,ordfilt2(g,k,ones(m,n),'symmetric'));
end
f=f/(m*n-d);
