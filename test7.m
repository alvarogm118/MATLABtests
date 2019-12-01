% test 7
%
% Puesto de trabajo Profesor
%
%% Pregunta 1
%
clear

% Su código aquí

% Datos
x0=-5; x1=5; dx=0.1;
x=x0:dx:x1;

% Cálculos
% Solución 1
y1(x<=-2)=-5/3*x(x<=-2)-10/3;
y1(x>-2 & x<2)=-x(x>-2 & x<2).^2+4;
y1(x>=2)=5/3*x(x>=2)-10/3;
y2=3*x;

% Solución 2
% y1=(x<=-2).*(-5/3*x-10/3) + (x>-2 & x<2).*(-x.^2+4) + (x>=2).*(5/3*x-10/3);
% y2=3*x;

% Gráfica
plot(x,y1,'r',x,y2,'g')
axis([-5  5 -10 10])
grid minor
title('Gráfica de la pregunta 1 del test 7')
legend('y_1(x)','y_2(x)')
xlabel('x')

%% Pregunta 2
%

% Su código aquí

% Solución 1
fprintf('\nLos puntos de intersección son (%d,%d)\n',[x(y1==y2);y1(y1==y2)])

%Solución 2
ind=find(y1==y2);
fprintf('\nLos puntos de intersección son (%d,%d)\n',[x(ind); y1(ind)])
