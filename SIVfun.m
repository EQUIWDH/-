function dx = SIVfun(t,x)
beta1 = 0.35;
beta2 = 0.2;
sigma = 0.1;
niu = 0.01;
theta = 0.05;
fai = 0.15;
k = 0.05;
gamma = 0.15;

dx = zeros(4,1);
dx(1)= beta1*(1-x(1)-(1-sigma)*x(2))*x(1)-(niu+gamma+k)*x(1)+k*x(3);
dx(2)= fai*(1-x(1)-x(2))-sigma*beta1*x(1)*x(2)-(niu+theta+k)*x(2)-k*x(4);
dx(3)= beta2*(1-x(3)-(1-sigma)*x(4))*x(3)-(niu+gamma+k)*x(3)+k*x(1);
dx(4)= fai*(1-x(3)-x(4))-sigma*beta2*x(3)*x(4)-(niu+theta+k)*x(4)-k*x(2);


end

