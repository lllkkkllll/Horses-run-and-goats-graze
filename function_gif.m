function [i]=function_gif(i,name,path)
i=i+1;
drawnow
print([path,'tample\tample.png'],'-dpng');   %保存图片
A = imread([path,'tample\tample.png']); %读取图片
[X, map] = rgb2ind(A, 256);            %彩色图像转化成索引图像
if i == 1
    imwrite(X, map, [path,name,'.gif'], 'gif', 'LoopCount', inf, 'DelayTime', 0.1)
else
    imwrite(X, map, [path,name,'.gif'], 'gif', 'WriteMode', 'append', 'DelayTime', 0.1)
end
end