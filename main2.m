clear;
clearFolder = 'Clear';
fogFolder = 'Fog';

clearDir = dir(clearFolder);
fogDir = dir(fogFolder);

%trainFog 
fogFeatures = cell(50,1);
imageCount = 0;
dirIndex = 0;
while imageCount < 50
    dirIndex = dirIndex + 1;
    if(strfind(fogDir(dirIndex).name, '.png') || ...
            strfind(fogDir(dirIndex).name, '.jpg') || ...
            strfind(fogDir(dirIndex).name, '.jpeg'))
        imageCount = imageCount + 1;
        image = imread([fogDir '/' fogDir(dirIndex).name]);
        blockSize = 4;
        f1 = zeros(blockSize, blockSize, ...
            size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f2 = zeros(blockSize, blockSize, ...
            size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f3 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f4 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f5 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f6 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f7 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f8 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        f9 = zeros(size(image, 1) - blockSize + 1, size(image, 2) - blockSize + 1);
        for y = 1:size(image, 1) - blockSize + 1
            for x = 1:size(image,2) - blockSize + 1
                [f1(y,x,:,:),f2(y,x,:,:),f3(y,x),f4(y,x),f5(y,x),f6(y,x) ...
                    ,f7(y,x),f8(y,x),f9(y,x)] = perceptualHaze(image, x, y, blockSize);
            end
        end
        
    end
end

        
