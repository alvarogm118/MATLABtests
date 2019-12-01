% test 16
%
% Puesto de trabajo xn
%
%
%% Pregunta 1

clear
% Su código aquí.
fprintf('\nEl error absoluto en la representación de la raiz cuadrada de 17 está acotado por %e\n',eps(sqrt(17))/2)

%% Pregunta 2

clear
% Su código aquí.
fprintf('\nLa representación hexadecimal, según el estandar IEEE745, de 5.25 es %bx\n',5.25)
fprintf('El siguiente número representable, según el estandar IEEE745, a %bx es %bx\n',5.25,5.25+eps(5.25))

%% Pregunta 3

clear
% Su código aquí.
fprintf('\nEl error relativo en la representación de la raiz cuadrada de 31147 está acotado por %e\n',(eps(sqrt(31147))/2)/sqrt(31147))
