
function [out, H] = butterworthlow (image,fc,q)


im=im2double(image);
im=rgb2gray(im);
    [co,ro] = size(im);
    cx = round(co/2); % find the center of the image
    cy = round (ro/2);
    imf=(fft2(im));
    H=zeros(co,ro);
    for i = 1 : co
        for j =1 : ro
               d = (i-cx).^2 + (j-cy).^ 2;
               H(i,j) = 1/(1+((d/fc).^(2*q)));
        end;
    end;
    H = ifftshift(H);
    outf = imf .* H;
    out = abs(ifft2(outf));
   