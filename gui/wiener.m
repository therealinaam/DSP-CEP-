function[i]=wiener(image,len,theta)


i=im2double(image);
i=rgb2gray(i);
PSF=fspecial('motion',len,theta);
i = deconvwnr(i,PSF);
