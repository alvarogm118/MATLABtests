% test 3
%
% Puesto de trabajo Profesor
%
%% Pregunta
% 
clear

% Datos
rng('default')
A=rand(5);

% Su código aquí
producto=prod(prod(A));
disp(['Producto de los elementos de A = ' num2str(producto,'%0.12f')])
