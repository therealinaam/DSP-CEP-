function  [out, H] = ideallow(image, fc)


im=rgb2gray(image);
im=im2double(im);
    imf = (fft2(im));
    [co,ro]=size(im);
    H = ideal_filter(co,ro,fc);
    H = ifftshift(H);
    outf=imf.*H;
    out=abs(ifft2(outf));
  