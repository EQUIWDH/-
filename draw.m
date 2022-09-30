function draw(t)
tspan = 1:t;
beta1 = 0.1;
beta2 = 0.2;
sigma = 0.1;
niu = 0.01;
theta = 0.05;
fai = 0.15;
k = 0.05;
gamma = 0.15;


v1_ = fai/(fai+niu+theta+2*k)
[T,Y] = ode45('SIVfun',1:t,[0.1,0,0.1,0]);
plot(tspan,Y(:,1),'r',tspan,Y(:,2),'b',tspan,Y(:,3),'k',tspan,Y(:,4),'g');
hold on
plot([1,t],[v1_,v1_],'m');
legend('I1','V1','I2','V2','v1平衡值');
title('效果图');