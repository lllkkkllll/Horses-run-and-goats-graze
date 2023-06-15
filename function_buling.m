function [U,min_num,max_num]=function_buling(U0,t_num,background)
%% t_num为要补到多大的矩阵，background为补零的值为多少
[M0,N0]=size(U0);
zuo = fix((t_num-M0)/2);
you = t_num-M0-zuo;
shang = fix((t_num-N0)/2);
xia = t_num-N0-shang;

min_num = zuo+1;
max_num = min_num + M0 -1;

temple_zuo = ones(zuo,N0)*background;
temple_you = ones(you,N0)*background;

temple = [temple_zuo;U0;temple_you];
temple_shang = ones(t_num,shang)*background;
temple_xia = ones(t_num,xia)*background;
U = [temple_shang temple temple_xia];
