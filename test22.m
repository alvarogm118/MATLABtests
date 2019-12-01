% test22
%
% Profesor

%% Problema 1
clear

% Declaraciones
syms f(x) g(x)
u(x)=heaviside(x);

% Definición de las funciones
f(x)=2^(-x)*(u(x)-u(x-2))+(5/4-2^(-x+2))*(u(x-2)-u(x-5));
g(x)=(1/8*x+3/8)*(u(x)-u(x-5));

% Gráficas
h=ezplot(f,[0 5]);
set(h,'Color','g')
hold on
h=ezplot(g,[0 5]);
set(h,'Color','r')
hold off
legend('f(x)','g(x)')
title('Gráficas problema 1')

% Puntos de corte
p=solve(f-g);
p=double(p);
fprintf('\nPuntos de intersección (%0.2f,%0.2f) y (%0.2f,%0.2f)\n',...
    p(3),f(p(3)),p(4),f(p(4)))

%% Problema 2

clear

% Datos
x=-4:.1:4;
y=x;

% Cálculos
[X,Y]=meshgrid(x,y);
Z=X.^2+Y.^2+abs(X.*Y); % superficie
z=x.^2+x.^2+abs(x.*y); % traza con el plano x=y

% Graficas
surf(x,y,Z), title('Gráficas del problema 2')
xlabel('x'), ylabel('y')
zlabel('z(x,y)=x^2+y^2+|xy|')
view(-50,54)
shading interp
colormap copper

hold on % para dibujer la traza
plot3(x,x,z)
hold off

%% Problema 3

clear

% Datos
load x;
L=70;

% Cálculos
y=zeros(size(x));  % se reserva memoria para y(n)
y(1)=x(1);
for n=2:L
    y(n)=x(n)+0.9*y(n-1);
end

% Gráficas
n=0:L-1
plot(n,x,'g',n,y,'r'), title('Gráficas del problema 3')
grid minor
xlabel('n')
legend('x(n)','y(n)')

%% Problema 4

clear

% Datos
x=[2 5 7 4 9 8 4 3 5 6];
y=[3 2 5 4 5 4 7 6 9 8];

% Cálculos
y1=mifuncion(x);

% Comprobación
if all(y1==y)
    fprintf('\nmifuncion cumple con el test\n')
else
    fprintf('\nmifunción no cumple con el test\n')
end

 