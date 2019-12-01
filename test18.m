% test 18
%
% Puesto de trabajo xn
%
%
clear

load medidas

% Solución de la ecuación Ax=b (x=abc, coeficientes de la parábola)
A=[xm.^2 xm ones(size(xm))]; b=ym;
abc=pinv(A)*b;

% presentación en pantalla de los parámetros estimdaos
fprintf('\nParámetros de la parábola: a=%0.2f, b=%0.2f, c=%0.2f\n',abc)

% modelo
x=0:.1:6;
y=abc(1)*x.^2+abc(2)*x+abc(3);

% gráfica
plot(x,y,'r',xm,ym,'ok')
legend('Modelo','Medidas')
xlabel('x')
title('Ajuste de mínimos cuadrados de una parábola')

