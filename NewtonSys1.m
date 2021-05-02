F=inline('[5*cos(x(1))+6*cos(x(1)+x(2))-10;5*sin(x(1))+6*sin(x(1)+x(2))-4]');
J=inline('[-5*sin(x(1))-6*sin(x(1)+x(2)),-6*sin(x(1)+x(2));5*cos(x(1))+6*cos(x(1)+x(2)),6*cos(x(1)+x(2))]');
x0=[0.7 , 0.7 ];tol=0.00001; kmax=20;
x=NewtonSys(F,J,x0,tol,kmax)