% test 14
%
% Puesto de trabajo Profesor
%
%

clear

primo=false; % Se inicia primo como falso
for m=0:9999 % Se exploran todos los números menores que 10000
    s=num2str(m,'%04d'); % Se convierte el numero a caracteres
    if s == s(end:-1:1) % Se comprueba si es capicúa
        if isprime(m)   % se comprueba si es primo
            primo=true;   % se ha encontrado muna matrícula primo y capicua
        end
    end
end

% se comprueba si existem primos capicúas menores que 10000
if primo
    fprintf('\nHay matrículas primo y capicúa\n')
else
    fprintf('\nNo hay matrículas primo y capicúa\n')
end