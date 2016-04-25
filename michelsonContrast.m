function result = michelsonContrast(image)
result = zeros(size(image));
for y = 1:size(image, 1)
    for x = 1:size(image, 2)
        xEnd = min(x+1, size(image,2));
        yEnd = min(y+1, size(image,1));
        region = image(y:yEnd, x:xEnd);
        iMin = min(region(:));
        iMax = max(region(:));
        result(y,x) = (iMax - iMin) / (iMax + iMin);
    end
end

end