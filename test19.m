% test 19
%
% Puesto de trabajo xn
%
%
clear

% Su código aquí

% Declaraciones
syms x
Num(x)=-x^2;
Den(x)=x+1;
f(x)=Num/Den;

% Gráfica
ezplot(f,[-6 4])
hold on

% Asíntotas verticales
asv=solve(Den);
plot([asv asv],[-10 10],'r')

% Asíntotas oblicuas
a=limit(f/x,Inf);
b=limit(f-a*x,Inf);
ezplot(a*x+b,[-6 4])
ezplot(f,[-6 4])
axis([-6 4 -10 10])
grid minor

% Extremos
d1f=diff(f,1);
ext=solve(d1f);

% Mínimo
plot(ext(1),f(ext(1)),'o')
text(double(ext(1)),double(f(ext(1))-1),'Mínimo')

% Maximo
plot(ext(2),f(ext(2)),'o')
text(double(ext(2)),double(f(ext(2))-1),'Máximo')
