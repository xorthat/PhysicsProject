function [mscn, vpairMSCN, sigma, covar] = calcMSCN(grayIm)
mu = imgaussfilt(grayIm, 3, 'FilterSize', 7);
%temp = (grayIm - mu).^2;
temp = zeros(size(grayIm));

for y = 1:size(grayIm, 1)
    for x = 1:size(grayIm, 2)
        currentPixel = mu(y,x);
        for l = -3:3
            for k = -3:3
                
            end
        end
    end
end
sigma = sqrt(imgaussfilt(temp, 3, 'FilterSize', 7));
mscn = (grayIm - mu) ./ (sigma + 1);
vpairMSCN = mscn(1:end-1,:).*mscn(2:end, :);
covar = sigma./mu;
end

