% test 11
%
% Puesto de trabajo Profesor
%
%
clear

% Su código aquí

% Datos
x=-20:.5:20; y=x;
P1=[-20 20 0.8]; P2=[20 -20 0.2];

% Cálculos
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2); % Atención, z(0,0)=NaN pero z(0,0)=1
Z(isnan(Z))=1;

% Gráficas
% Superficie
surf(x,y,Z)
grid on
title('Superficie atravesada por una recta')
xlabel('x'), ylabel('y')
zlabel('z(x,y)=sin(\surd(x^2+y^2))/\surd(x^2+y^2) y recta que pasa por los puntos (-20 20 0.8), (20 -20 0.2)')
view(20,40)       % Punto de vista
alpha(0.6)        % Transparencia
colormap autumn   % Mapa de colores otoñal

% Recta
hold on
plot3([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)],'r','Linewidth',3)
hold off

