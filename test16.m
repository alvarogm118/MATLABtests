% test 16
%
% Puesto de trabajo xn
%
%
%% Pregunta 1

clear
% Su c�digo aqu�.
fprintf('\nEl error absoluto en la representaci�n de la raiz cuadrada de 17 est� acotado por %e\n',eps(sqrt(17))/2)

%% Pregunta 2

clear
% Su c�digo aqu�.
fprintf('\nLa representaci�n hexadecimal, seg�n el estandar IEEE745, de 5.25 es %bx\n',5.25)
fprintf('El siguiente n�mero representable, seg�n el estandar IEEE745, a %bx es %bx\n',5.25,5.25+eps(5.25))

%% Pregunta 3

clear
% Su c�digo aqu�.
fprintf('\nEl error relativo en la representaci�n de la raiz cuadrada de 31147 est� acotado por %e\n',(eps(sqrt(31147))/2)/sqrt(31147))
