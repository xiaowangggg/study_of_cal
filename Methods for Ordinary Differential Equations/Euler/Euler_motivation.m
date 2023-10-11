%%后拉法的实现部分
[x1,y1] =Euler_backward(0.1);
[x2,y2] =Euler_backward(0.05);
[x3,y3] =Euler_backward(0.01);
plot(x1,y1,'b');hold on;
plot(x2,y2,'g');hold on;
plot(x3,y3,'r');
xlabel('x');
ylabel('u');
legend('h=0.1','h=0.05','h=0.01','Location','northwest');