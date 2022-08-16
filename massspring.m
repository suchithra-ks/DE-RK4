function fval =massspring(t,y)
x = y(1);
v = y(2);
m = 10;
c =5;
k = 15;
fval(1,1) = v;
fval(2,1) = -(c*v + k*x)/m;
