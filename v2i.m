function v2i(filename)


% v_pathname = 'D:\Kevin\GitSyncdisk\Video\';
% v_filename = 'map.mp4';

height = 480;
width = 640;

v = VideoReader(filename); % 方式一
% v = VideoReader(strcat(v_pathname, v_filename)); % 方式二
% v = VideoReader(sprintf('%s%s',v_pathname, v_filename)); % 方式三
% v = VideoReader('D:\Kevin\GitSyncdisk\Video\map.mp4'); % 方式四

n_frame = 0;

while hasFrame(v)
    frame = readFrame(v);
%     gray_img = rgb2gray(frame); % 转换为灰阶图像
%     gray_img = imresize(gray_img, [height, width], 'bilinear'); % 调整图像大小
    n_frame = n_frame + 1;
    % 方式一
    % imwrite(gray_img, [f_pathname, f_filename, num2str(n_frame), '.jpg']);
    % 方式二
    % imwrite(gray_img, strcat(f_pathname, f_filename, num2str(n_frame), '.jpg'));
    % 方式三
    imwrite(frame,['\img\' num2str(n_frame) '.png']);
end
