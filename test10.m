% test 10
%
% Puesto de trabajo Profesor
%
%
clear

% Su código aquí

% Datos
rng('default');
x=randn(1,100);

% Llamada a la función primos
[N,C]=hist(x,5);
pie(N,[1 0 0 0 1],{num2str(C(1),'%0.2f') num2str(C(2),'%0.2f') num2str(C(3),'%0.2f') num2str(C(4),'%0.2f') num2str(C(5),'%0.2f')})
