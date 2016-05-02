folder = 'Clear';
folderInfo = dir(folder);
count = 1;
for i = 1:numel(folderInfo)
    fname = folderInfo(i).name;
    if(isempty(strfind(fname, '.png')) && isempty(strfind(fname, '.jpeg'))...
            && isempty(strfind(fname, '.jpg')))
        continue;
    else
        image = double(imread([folder '/' fname]));
        clearResults(count) = calculateHazeDegree(image);
        count = count + 1
        disp('---')
    end
end

folder = 'Fog';
folderInfo = dir(folder);
count = 1;
for i = 1:numel(folderInfo)
    fname = folderInfo(i).name;
    if(isempty(strfind(fname, '.png')) && isempty(strfind(fname, '.jpeg'))...
            && isempty(strfind(fname, '.jpg')))
        continue;
    else
        image = double(imread([folder '/' fname]));
        fogResults(count) = calculateHazeDegree(image);
        count = count + 1
        disp('---')
    end
end
plot(1:57, fogResults, 'bo', 1:58, clearResults, 'ro')
return