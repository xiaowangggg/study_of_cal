%%向后欧拉法的主程序
function [x,u]=Euler_backward(h)
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
         tmp_u=u(i)+h*f(x(i),u(i));
         u(i+1)=Euler_iteration(x(i),u(i),tmp_u,h,0.001);
     end
end

