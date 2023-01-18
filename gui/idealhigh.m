
function  [out,H] = idealhigh(image, fc)
im=rgb2gray(image);
im=im2double(im);
    imf = (fft2(im));
    [co,ro]=size(im);
    H = ideal_filter(co,ro,fc);
    H = ifftshift(H);
    H=1-H;
    outf=imf.*H;
    out=abs(ifft2(outf));
     
  