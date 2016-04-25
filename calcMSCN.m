function [mscn, vpairMSCN, sigma, covar] = calcMSCN(grayIm)
mu = imgaussfilt(grayIm, 3, 'FilterSize', 3);
temp = (grayIm - mu).^2;
sigma = sqrt(imgaussfilt(temp, 3, 'FilterSize', 3));
mscn = (grayIm - mu) ./ (sigma + 1);
vpairMSCN = mscn(1:end-1,:).*mscn(2:end, :);
covar = sigma./mu;
end

