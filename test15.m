%% test15
% Encontrar el n�mero capic�a mayor formado por el producto de dos n�meros
% de tres cifras.

clear, clc

CapMax=1; % Capic�a m�ximo = 1, valor inicial
tic % puesta a cero del timer

for n=900:999 % Se exploran los n�meros de tres cifras "grandes"
    for m=n:999 % Se explota la propiedad conmutativa del producto
        p=n*m;
        s=num2str(p);
        if (s==s(end:-1:1)) & (p>CapMax) % �N�mero capic�a y mayor que el anterior?
            CapMax=p;
            Pn=n;Pm=m; % Factores si se pidieran
        end
    end
end

fprintf('\nEl n�mero capic�a mayor producto de dos n�meros de tres cifras es %d\n',CapMax)

fprintf('\nTiempo empleado en el c�lculo %2.2f s\n',toc)

%% �Cuantas operaciones a+b*c por segundo?
tic
L=1000;
P=1000;
for n=1:L
    for m=1:P
        %a=n*m+m;
    end
end
t=toc;

tic
for n=1:L
    for m=1:P
        a=n*m+m;
    end
end

fprintf('\n%1.2e sumas de productos por segundo\n',L*P/(toc-t))

1/(L*P/(toc-t))

