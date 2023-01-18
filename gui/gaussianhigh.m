function  [out, H] = gaussianhigh(image,fc)

im=im2double(image);
im =rgb2gray(im);
    imf = fft2(im);
    [co,ro]=size(im);
    out = zeros(co,ro);
    H = gaussian_filter(co,ro, fc);
    H = ifftshift(H);
    H=1-H;
    outf= imf.*H;
    out=abs(ifft2(outf));
  