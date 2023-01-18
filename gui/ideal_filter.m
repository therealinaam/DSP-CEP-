%Ideal filter
function H = ideal_filter(m,n,fc)
%M and N are the array size of the image. fc is the frequency cutoff. This
%function can be used for both low pass and high pass ideal filters.The
%equation for this was taken from the bandreject filter.
    cx = round(m/2); % find the center of the image
    cy = round (n/2);
    H=zeros(m,n);
    if fc > cx & fc > cy
        H = ones(m,n);
        return;
    end;
    for i = 1 : m
        for j = 1 : n
            if (i-cx).^2 + (j-cy).^2 <= fc .^2
                H(i,j)=1;
            end;
        end;
    end;