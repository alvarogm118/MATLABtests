% test 6
%
% Puesto de trabajo Profesor
%
clear

% Su código aquí
[X,Y]=meshgrid(-3:0.1:3,-3:0.1:3);
Z=sin(X.^2).*cos(Y.^2);

% Opcional
surf(Z)
view(-45,55)

