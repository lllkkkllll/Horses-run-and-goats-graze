function [time]=function_time(filename)% 创建文件夹并返回创建时间
t=datetime;
time=[num2str(t.Month),'.',num2str(t.Day),'-',num2str(t.Hour),'.',num2str(t.Minute)];
mkdir([filename,time]); 
mpath= matlab.desktop.editor.getActiveFilename;
copyfile(mpath,[pwd,'\',filename,time])
mkdir([filename,time,'\function']);
copyfile(".\function",[pwd,'\',filename,time,'\function'])
end