rap=255.0;

i=1;
disp('Hit a key to see next scene');

while (i<66)
	% original scene without fog
	withoutfogfn=sprintf('LIma-%.6d.png',i);
	withoutfog=double(imread(withoutfogfn))/rap;	% now between O and 1
	% depthmap as a float point array
	depthmapfn=sprintf('LDep-%.6d.fdd',i);
	depthmap=double(load(depthmapfn))/1000.0; 	% now in meters	
	d=1.0-depthmap./(100+depthmap);
	% with uniform fog 
	u080fn=sprintf('U080-%.6d.png',i);
	u080=double(imread(u080fn))/rap; 		% now between O and 1
	% with heterogeneous fog 
	k080fn=sprintf('K080-%.6d.png',i);
	k080=double(imread(k080fn))/rap; 		% now between O and 1
	% with cloudy fog  
	l080fn=sprintf('L080-%.6d.png',i);
	l080=double(imread(l080fn))/rap; 		% now between O and 1
	% with cloudy heterogeneous fog  
	m080fn=sprintf('M080-%.6d.png',i);
	m080=double(imread(m080fn))/rap; 		% now between O and 1
	% display
	imshow([withoutfog,repmat(d,[1,1,3]),u080,k080,l080,m080],[0,1]);
	title('	clear			depthmap				homogeneous fog			heterogeneous fog			cloudy fog		cloudy heterogeneous fog');
	w=waitforbuttonpress;
	if w==1 i=i+1;
	end
end

