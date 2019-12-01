% test 8
%
% Puesto de trabajo Profesor
%
%
clear

% Su código aquí

% Datos
x0=0; x1=5; dx=1e-5;
x=x0:dx:x1;

% Cálculo de y(x)
y=(x+1/sqrt(2)).*exp(-x);

% Gráfica
plot(x,y,'k','LineWidth',2)
axis([0 5 0 1])
grid minor
title('Figura del test 8, y(x)'), xlabel('x'), ylabel('y(x)=(x+1/\surd2)e^{-x}')

% Cálculo y presentación del máximo
[M,i]=max(y);
fprintf('\nlas coordenadas del máximo de y(x) son (%0.5f,%0.11f)\n',x(i),M)

