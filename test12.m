% test 12
%
% Puesto de trabajo Profesor
%
%
clear

% Su código aquí.

% Datos de los vértices
P1=[1 1 0]; P2=[5 1 0]; P3=[3 1+2*sqrt(3) 0]; P4=[3 1+2*sqrt(3)/3 4*sqrt(2/3)];

% Cálculos
Pxb=[P1(1) P2(1) P3(1) P1(1)];   %coordenadas x de la base
Pyb=[P1(2) P2(2) P3(2) P1(2)];   %coordenadas x de la base
Pzb=[P1(3) P2(3) P3(3) P1(3)];   %coordenadas x de la base
Pxr=[P1(1) P4(1) P2(1) P4(1) P3(1)];   %coordenadas x del resto
Pyr=[P1(2) P4(2) P2(2) P4(2) P3(2)];   %coordenadas y del resto
Pzr=[P1(3) P4(3) P2(3) P4(3) P3(3)];   %coordenadas x del resto

h=plot3(Pxb,Pyb,Pzb,'r',Pxr,Pyr,Pzr,'g');
set(h(1),'LineWidth',2)   % Ancho de línea de la base
set(h(2),'LineWidth',4)   % Ancho de línea del resto de aristas
axis([-1 6 -1 6 -1 4])
grid on
axis square
title('Tetraedro regular de arista 4 unidades')
xlabel('x'), ylabel('y'), zlabel('z')

% Etiquetado de los vértices
text(0.5,0.5,0,'P_1')
text(4.9,0.5,0,'P_2')
text(2.4,4.7,0,'P_3')
text(2.9,1+2*sqrt(3)/3,4*sqrt(2/3)+0.3,'P_4')
