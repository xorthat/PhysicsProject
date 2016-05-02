folder = 'Bamse';
folderInfo = dir(folder);
count = 1;
mkdir([folder '/FADE']);
for i = 1:numel(folderInfo)
    fname = folderInfo(i).name;
    if(isempty(strfind(fname, '.png')) && isempty(strfind(fname, '.jpeg'))...
            && isempty(strfind(fname, '.jpg')))
        continue;
    else
        image = double(imread([folder '/' fname]));
        bamse1Results(count) = calculateHazeDegree(image);
        [bamse2Results(count), im] = FADE(image);
        im = imresize(im, [size(image,1), size(image,2)]);
        im = im.*15;
        imwrite(uint8(im), [folder '/FADE/' fname]);
        count = count + 1
        disp('---')
    end
end