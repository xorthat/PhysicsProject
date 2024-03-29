function [f1,f2,f3,f4,f5,f6,f7,f8,f9] = perceptualHaze(image, x, y, blockSize)
grayIm = rgb2gray(image);
[f1, f2, f3, f4] = calcMSCN(grayIm);
f5 = michelsonContrast(image);
f6 = entropy(grayIm);
f7 = min(image, [], 3);
[f8, f9] = calcColorMetrics(image);
end

