% test 20
%
% Puesto de trabajo xn
%
%% Pregunta 1
clear, clf

% Su c�digo aqu�

% Declaraciones
syms y(t)
x(t)=heaviside(t);
Dy(t)=diff(y);

% Soluci�n de la ecuaci�n diferencial
y(t)=dsolve(diff(y,2)+1.9*diff(y,1)+25*y==1, Dy(0)==0, y(0)==0);

% Gr�fica
ezplot(y,[0 6 -.01 .08])
title('Respuesta al escal�n s(t)')
grid minor


%% Pregunta 2
clear

syms y(t)
x(t)=dirac(t);
eq=diff(y,2)+1.9*diff(y,1)+25*y-x(t); % Ecuaci�n diferencial
Eq=laplace(eq); %Transformada de Laplace de la ecuaci�n diferencial

% Declaraci�n de las variables en el dominio s
syms s w Y H

Eq=subs(Eq,{laplace(y(t), t, s) 'D(y)(0)' y(0)},{Y 0 0}); % Reposo inicial
Eq=collect(Eq,Y)
H=solve(Eq,Y)    % Funci�n H(s) del sistema

% Respuesta impulsiva
h(t)=ilaplace(H,s,t)

% Gr�fica
ezplot(h,[0 6 -.1 .2])
grid minor
title('Respuesta impulsiva h(t)')

%% Pregunta 3

% Respuesta en amplitud
M(w)=20*log10(abs(subs(H,s,1j*w)));

% Respuesta en fase
F(w)=angle(subs(H,s,1j*w));

% Gr�ficas
subplot(211)
ezplot(M,[-10 10])
title('Respuesta en amplitud del sistema')
xlabel('\omega'), ylabel('dB')
grid minor

subplot(212)
ezplot(F,[-10 10])
title('Respuesta en fase del sistema')
xlabel('\omega'), ylabel('rad')
grid minor
