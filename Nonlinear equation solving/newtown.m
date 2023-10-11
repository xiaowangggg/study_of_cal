function x=newtown(f,fd,x0,eps)

xk=x0;
while feval(f,xk)>eps
    xk=xk-feval(f,xk)/feval(fd,xk);
end
fprintf('%d\n',xk)

    
    