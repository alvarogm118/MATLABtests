% test 18
%
% Puesto de trabajo xn
%
%
clear

load medidas

% Soluci�n de la ecuaci�n Ax=b (x=abc, coeficientes de la par�bola)
A=[xm.^2 xm ones(size(xm))]; b=ym;
abc=pinv(A)*b;

% presentaci�n en pantalla de los par�metros estimdaos
fprintf('\nPar�metros de la par�bola: a=%0.2f, b=%0.2f, c=%0.2f\n',abc)

% modelo
x=0:.1:6;
y=abc(1)*x.^2+abc(2)*x+abc(3);

% gr�fica
plot(x,y,'r',xm,ym,'ok')
legend('Modelo','Medidas')
xlabel('x')
title('Ajuste de m�nimos cuadrados de una par�bola')

