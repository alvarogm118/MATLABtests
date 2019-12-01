% test 17
%
% Puesto de trabajo xn
%
%
p=[1 -18 135 -540 1215 -1458 729];   % polinomio original

pm=p; pm(2)=pm(2)+1e-6;              % polinomio perturbado

r=3*ones(6,1);   % raices del polinomio original
rp=roots(pm);     % raices del polinomio perturbado

delta_solucion=norm(r-rp);  % variaci�n de la soluci�n
delta_datos=norm(p-pm);     % variaci�n de los datos

fprintf('\nN�mero de condici�n = %.2e\n',delta_solucion/delta_datos)

% gr�fica
scatter(real(rp),imag(rp),'r')
hold on
scatter(3,0,'r','LineWidth',2)
legend('Ra�ces de p(x) perturbado','Ra�z m�ltiple de p(x)')
xlabel('Parte real de las ra�ces'),ylabel('Parte imaginaria de las ra�ces')
title('Ra�ces de un polinomio perturbado')
hold off
grid minor
axis([2.75 3.25 -0.3 0.3])
