function v2i(filename)


% v_pathname = 'D:\Kevin\GitSyncdisk\Video\';
% v_filename = 'map.mp4';

height = 480;
width = 640;

v = VideoReader(filename); % ��ʽһ
% v = VideoReader(strcat(v_pathname, v_filename)); % ��ʽ��
% v = VideoReader(sprintf('%s%s',v_pathname, v_filename)); % ��ʽ��
% v = VideoReader('D:\Kevin\GitSyncdisk\Video\map.mp4'); % ��ʽ��

n_frame = 0;

while hasFrame(v)
    frame = readFrame(v);
%     gray_img = rgb2gray(frame); % ת��Ϊ�ҽ�ͼ��
%     gray_img = imresize(gray_img, [height, width], 'bilinear'); % ����ͼ���С
    n_frame = n_frame + 1;
    % ��ʽһ
    % imwrite(gray_img, [f_pathname, f_filename, num2str(n_frame), '.jpg']);
    % ��ʽ��
    % imwrite(gray_img, strcat(f_pathname, f_filename, num2str(n_frame), '.jpg'));
    % ��ʽ��
    imwrite(frame,['\img\' num2str(n_frame) '.png']);
end
