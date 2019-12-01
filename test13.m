% test 13
%
% Puesto de trabajo Profesor
%
clear

n=0; % Se inicia el contador de capic�as
for m=0:9999 % Se exploran todos los casos posibles
    s=num2str(m,'%04d'); % Se convierte el numeral de la matr�cula a caracteres
    if s == s(end:-1:1) % Se comprueba si se lee igual en ambas direcciones
        n=n+1; % Se incrementa el contador de capic�a
    end
end

% La probabilidad es (casos posibles)/(casos totales) X 100
fprintf('\nLa probabilidad de observar una matr�cula capic�a es %0.2f%%\n',n*100/1e4)