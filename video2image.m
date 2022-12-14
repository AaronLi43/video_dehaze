function video2image(filename)
    savepath= ['D:\Year4\First Half\DIP lab\P1\ST-MRF-master\ST-MRF-master\bali\'];
    if ~exist(savepath,'dir')
        mkdir(savepath)
    end 
    obj=VideoReader([filename]);
    framenum=obj.NumberOfFrames;
    h=waitbar(0,'please wait');
    for f=1:framenum
        img=read(obj,f);
        imwrite(img,[savepath num2str(f,'%04d') '.png']);
        str=[num2str(f/framenum*100, '%.02f'),'%'];
        waitbar(f/framenum,h,str)
    end
    close(h)