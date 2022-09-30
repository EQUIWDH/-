function drawloop()
fai = 0.01;
T = 10;
t = 1:1000;
V1_NT = 0;
V2_NT = 0;
I1_NT = 0.1;
I2_NT = 0.1;
for k = 1:20
tspan = 1+(k-1)*50:50*k;
[X,Y] = ode45('SIVfun',1+(k-1)*50:50*k,[I1_NT,V1_NT,I2_NT,V2_NT]);
plot(tspan,Y(:,1),'r',tspan,Y(:,2),'b',tspan,Y(:,3),'k',tspan,Y(:,4),'g');
hold on
V1_NT= fai+(1-fai)*Y(end,2)-fai*Y(end,1);
V2_NT= fai+(1-fai)*Y(end,4)-fai*Y(end,3);
I1_NT = Y(end,1);
I2_NT = Y(end,3);

end
legend('I1','V1','I2','V2');
title('Ð§¹ûÍ¼');
