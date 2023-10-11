function [x]=iteration(diedaif,x0,eps)
N=10;
res=feval(diedaif,x0);
xk=x0;
k=0;
while abs(x0-res)>eps & k< N
    xk=feval(diedaif,xk);
    res=feval(diedaif,xk);
    k=k+1;
    fprintf('%d\n',xk)
end
