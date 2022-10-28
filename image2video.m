function image2video(dn, picformat, aviname)
%example ('./', 'png','presentation.avi')

    if ~exist(dn, 'dir')
        error('dir not exist!!!!');
    end
    picname=fullfile( dn, strcat('*.',picformat));
    picname=dir(picname);

    aviobj = VideoWriter(aviname);

    open(aviobj);

    for i=1:length(picname)
        picdata=imread( fullfile(dn, (picname(i,1).name)));
%         if ~isempty( aviobj.Height)
%             if size(picdata,1) ~= aviobj.Height || size(picdata,2) ~= aviobj.Width
%                 close(aviobj);
%                 delete( aviname )
%                 error('所有图片的尺寸要相同！！');
%             end
%         end
        writeVideo(aviobj,picdata);
    end
    close(aviobj);
end
