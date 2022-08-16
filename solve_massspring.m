% % solve ode using rk4 method
t0 = 0;
y0 = [1 0]';
tend = 10;
h = 0.1;
N = (tend - t0)/h;
t = [t0:h:tend]';
y = zeros(2,N+1);
y(:,1) =y0;
for i=1:N
    yi = y(:,i);
    k1= massspring(t(i),yi);
%     tnew = ;
%     ynew = y(i)+h*k1;
    k2 = massspring(t(i) +h/2, yi+h*k1/2);
    k3 = massspring(t(i) +h/2, yi+h*k2/2);
    k4 = massspring(t(i) +h, yi+h*k3);
    
    ynew = yi+ h/6*(k1+2*k2+2*k3+k4);
    y(:,i+1) = ynew;
    
end
yend = y(:,end);
figure
plot(t,y(1,:),'r')
xlabel('time')
%ylabel('displacement')
hold on
plot(t, y(2,:),'g')
ylabel('state variables')