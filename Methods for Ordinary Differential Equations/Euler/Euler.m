%%欧拉法的主程序
function [x,y]=Euler(h)
   x1=1;
   x2=2;
   y1=0;
   N=abs(x2-x1)/h;
   y=zeros(N+1,1);
   x=zeros(N+1,1);
   y(1)=y1;
   x(1)=x1;
   for i=1:N
       x(i+1)=x(i)+h;
       y(i+1)=y(i)+h*f(x(i),y(i));
   end
end


        
