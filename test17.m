% test 17
%
% Puesto de trabajo xn
%
%
p=[1 -18 135 -540 1215 -1458 729];   % polinomio original

pm=p; pm(2)=pm(2)+1e-6;              % polinomio perturbado

r=3*ones(6,1);   % raices del polinomio original
rp=roots(pm);     % raices del polinomio perturbado

delta_solucion=norm(r-rp);  % variación de la solución
delta_datos=norm(p-pm);     % variación de los datos

fprintf('\nNúmero de condición = %.2e\n',delta_solucion/delta_datos)

% gráfica
scatter(real(rp),imag(rp),'r')
hold on
scatter(3,0,'r','LineWidth',2)
legend('Raíces de p(x) perturbado','Raíz múltiple de p(x)')
xlabel('Parte real de las raíces'),ylabel('Parte imaginaria de las raíces')
title('Raíces de un polinomio perturbado')
hold off
grid minor
axis([2.75 3.25 -0.3 0.3])
