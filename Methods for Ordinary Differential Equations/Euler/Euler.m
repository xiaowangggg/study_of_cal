%%欧拉法的主程序
function [x,u]=Euler(h)
   x1=1;
   x2=2;
   u1=0;
   N=abs(x2-x1)/h;
   u=zeros(N+1,1);
   x=zeros(N+1,1);
   u(1)=u1;
   x(1)=x1;
   for i=1:N
       x(i+1)=x(i)+h;
       u(i+1)=u(i)+h*f(x(i),u(i));
   end
end


        