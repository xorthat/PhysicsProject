function results = crawlFolder2(folder)
folderInfo = dir(folder);
mkdir([folder '/FADE'])
for i = 1:numel(folderInfo)
    fname = folderInfo(i).name;
    if(strfind(fname, '.png'))
        startIdx = strfind(fname, '-')+1;
        endIdx = strfind(fname, '.')-1;
        fileNum = str2num(fname(startIdx:endIdx));
        image = double(imread([folder '/' fname]));
        if(strfind(fname, 'M080'))
            [results(1, fileNum), im] = FADE(image);
        elseif(strfind(fname, 'L080'))
            [results(2, fileNum), im] = FADE(image);
        elseif(strfind(fname, 'K080'))
            [results(3, fileNum), im] = FADE(image);
        elseif(strfind(fname, 'U080'))
            [results(4, fileNum), im] = FADE(image);
        elseif(strfind(fname, 'LIma'))
            [results(5, fileNum), im] = FADE(image);
        else
            disp('UNKNOWN CATEGORY!');
        end
        imwrite(uint8(im.*5), [folder '/FADE/' fname]);
    end
end
return