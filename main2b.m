folder = 'Clear';
folderInfo = dir(folder);
mkdir([folder '/FADE'])
count = 1;
for i = 1:numel(folderInfo)
    fname = folderInfo(i).name;
    if(isempty(strfind(fname, '.png')) && isempty(strfind(fname, '.jpeg'))...
            && isempty(strfind(fname, '.jpg')))
        continue;
    else
        image = double(imread([folder '/' fname]));
        [results(count), im] = FADE(image);
        im = imresize(im, [size(image,1), size(image,2)]);
        im = im.*15;
        imwrite(uint8(im), [folder '/FADE/' fname]);
        count = count + 1
        disp('---')
        max(im(:))
    end
end
return