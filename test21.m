% test 21
%
% Puesto de trabajo profesor
%
clear

% Su código aquí

% Ecuación diferencial
dydt=@(t,y) [y(2); 1-1.9*y(2)-25*y(1)];

% Solución con ode45
[t,y]=ode45(dydt,[0 6],[0 0]);

% Gráficas
plot(t,y(:,1),'k',t,y(:,2),'g')
title('Solución numérica con ode45')
xlabel('t')
legend('y(t), respuesta al escalón','y''(t), respuesta impulsiva')
grid minor
