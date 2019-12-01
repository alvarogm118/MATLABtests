% test 14
%
% Puesto de trabajo Profesor
%
%

clear

primo=false; % Se inicia primo como falso
for m=0:9999 % Se exploran todos los n�meros menores que 10000
    s=num2str(m,'%04d'); % Se convierte el numero a caracteres
    if s == s(end:-1:1) % Se comprueba si es capic�a
        if isprime(m)   % se comprueba si es primo
            primo=true;   % se ha encontrado muna matr�cula primo y capicua
        end
    end
end

% se comprueba si existem primos capic�as menores que 10000
if primo
    fprintf('\nHay matr�culas primo y capic�a\n')
else
    fprintf('\nNo hay matr�culas primo y capic�a\n')
end