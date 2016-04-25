function results = crawlFolder(folder)
folderInfo = dir(folder);
for i = 1:numel(folderInfo)
    fname = folderInfo(i).name;
    if(strfind(fname, '.png'))
        startIdx = strfind(fname, '-')+1;
        endIdx = strfind(fname, '.')-1;
        fileNum = str2num(fname(startIdx:endIdx));
        image = double(imread([folder '/' fname]));
        if(strfind(fname, 'M080'))
            results(1, fileNum) = calculateHazeDegree(image);
        elseif(strfind(fname, 'L080'))
            results(2, fileNum) = calculateHazeDegree(image);
        elseif(strfind(fname, 'K080'))
            results(3, fileNum) = calculateHazeDegree(image);
        elseif(strfind(fname, 'U080'))
            results(4, fileNum) = calculateHazeDegree(image);
        elseif(strfind(fname, 'LIma'))
            results(5, fileNum) = calculateHazeDegree(image);
        else
            disp('UNKNOWN CATEGORY!');
        end
    end
end
return

