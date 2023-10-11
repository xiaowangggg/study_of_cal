%%用于向后欧拉法的迭代部分
function [yx]=Euler_iteration(x,y1,y2,h,eps)
    yx=y1+h*f(x,y2);
    k=0;
    while abs(yx-y2)>eps && k<=100
        y2=yx;
        yx=y1+h*f(x,y2);
        k=k+1;
    end
end
