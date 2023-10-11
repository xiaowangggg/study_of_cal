function res=t_erfen(f,a,b,eps)

fa=feval(f,a);
fb=feval(f,b);

if fa*fb>0
    error('函数在区间[%d %d]上无解 \n',a,b);
end

while (b-a)>eps
    mid=(b+a)/2;
    if feval(f,mid)>0
        b=mid;
    else
        a=mid;
    end
end
disp(a)



