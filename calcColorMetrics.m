function [saturation, cf] = calcColorMetrics(rgbImage)
hsvImage = hsv2rgb(image);
saturation = hsvImage(:,:,2);
rgImage = rgbImage(:,:,1) - rgbImage(:,:,2);
ybImage = .5*(rgbImage(:,:,1) + rgbImage(:,:,2)-rgbImage(:,:,3));
mu_rg = mean(rgImage(:));
mu_yb = mean(ybImage(:));
sigma_rg = mean(rgImage(:).^2-mu_rg^2);
sigma_yb = mean(ybImage(:).^2-mu_yb^2);
cf = sqrt(sigma_rg + sigma_yb) + .3*sqrt(mu_rg^2+mu_yb^2);
return