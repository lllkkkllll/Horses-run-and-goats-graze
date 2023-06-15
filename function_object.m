function object=function_object(p,path_A,path_phase,A_o,phi_o,j_or_k)
Amin=A_o(1);Amax=A_o(2);pmin=phi_o(1);pmax=phi_o(2);
if Amax>1 && Amin<0
    warning('样品透过率设置好像有问题啊')
elseif Amax<=Amin
    warning('样品透过率设置好像有问题啊')
end
a0=double(imread(path_A));
b=a0(:,:,1);
a=double(imread(path_phase));
A=a./max(max(a))*(Amax-Amin)+Amin;
B=(b./max(max(b)))*(pmax-pmin)+pmin;

if j_or_k=='j' %j为截取图片，k为扩大图片
    [~,jie_tu(1),jie_tu(2)]=function_buling(zeros(p.t_num3),size(A,1),0);
    tu=jie_tu(1):jie_tu(2);
    A=A(tu,tu);B=B(tu,tu);
else
    A=imresize(A,p.t_num3/size(A,1));
    B=imresize(B,p.t_num3/size(B,1));
end

% A(112:189,119:195)=Amax;%不是分辨率板记得删掉
object=A.*exp(1i.*B);
end