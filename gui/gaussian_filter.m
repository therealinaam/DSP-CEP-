function  H = gaussian_filter(co,ro, fc)   
     cx = round(co/2); % find the center of the image
    cy = round (ro/2);
    H = zeros(co,ro);
    for i = 1 : co
        for j = 1 : ro
            d = (i-cx).^2 + (j-cy).^2;
            H(i,j) = exp(-d/2/fc/fc);
        end;
    end;