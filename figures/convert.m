clear all;
close all;
%存放fig文件的路径
fig_path = pwd;
%切换到指定路径下
cd (fig_path); 
%获取路径下所有fig格式文件
file=dir(fullfile(fig_path, '\**\', '*.fig'));
%获得fig文件数量
fig_num=length(file);
%利用for循环批量改变图片格式
for i=1:fig_num
    folder = file(i).folder; %文件路径
    oldname=file(i).name;   %原文件名
    [~,name,~] = fileparts(oldname);%原文件名拆解
    h = openfig(fullfile(folder,oldname));%用h读入fig文件
%     saveas(h,fullfile(folder,[name,'.jpg']),'jpg');%利用saveas改变文件格式
    saveas(h,fullfile(folder,[name,'.eps']),'epsc');%利用saveas改变文件格式
end
close all;