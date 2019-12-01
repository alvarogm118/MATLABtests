% test 21
%
% Puesto de trabajo profesor
%
clear

% Su c�digo aqu�

% Ecuaci�n diferencial
dydt=@(t,y) [y(2); 1-1.9*y(2)-25*y(1)];

% Soluci�n con ode45
[t,y]=ode45(dydt,[0 6],[0 0]);

% Gr�ficas
plot(t,y(:,1),'k',t,y(:,2),'g')
title('Soluci�n num�rica con ode45')
xlabel('t')
legend('y(t), respuesta al escal�n','y''(t), respuesta impulsiva')
grid minor
