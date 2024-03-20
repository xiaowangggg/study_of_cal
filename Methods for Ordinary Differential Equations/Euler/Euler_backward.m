%%向后欧拉法的主程序
function [x,y]=Euler_backward(h)
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
         tmp_u=y(i)+h*f(x(i),u(i));
         y(i+1)=Euler_iteration(x(i),y(i),tmp_u,h,0.001);
     end
end

