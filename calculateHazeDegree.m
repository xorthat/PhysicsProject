function [hazeDegree] = calculateHazeDegree(image)
%This is based upon the paper: Detecting Foggy Images and Estimating the Haze Degree Factor
averageMax = max(image,[], 3); %b'
averageMax = mean(averageMax(:)); %b
averageMin = min(image,[], 3); %d'
averageMin = mean(averageMin(:)); %d
averageContrast = averageMax - averageMin; %c
lambda = 1/3;
airlight = lambda*max(image(:))+(1-lambda)*averageMax;
x1 = (airlight - averageMin) / airlight;
x2 = averageContrast / airlight;
hazeDegree = exp(-1/2*(5.1*x1+2.9*x2)+0.2461);
end