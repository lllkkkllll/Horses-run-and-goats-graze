function function_try_imgsave(fig_num,path,fig_name)
    try
        function_imgsave(fig_num,[path,'_',fig_name,'.png'])
    catch
        warning([fig_name,'.png 保存失败']);
    end
    
    function []=function_imgsave(fig_num,file_name)
        set( fig_num,'position', get(0,'ScreenSize'));
        saveas( fig_num, file_name);
    end
end