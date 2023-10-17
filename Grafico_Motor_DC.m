%-----Función ode45 que resuslve numericamente el sistema------%
[t,x]=ode45(@MOTOR_DC, [0 10], [0 0 0])
%Graficamos nuestro sistemas de ecuaciaones
% x y t son parametros que retorna la función que creamos
%Figura 1
figure(1)
plot(t,x(:,3), 'b'); %Tomamos la columna de la velocidad angular
grid on
title("Velocidad Angular del motor");
xlabel("Tiempo");
ylabel("Radianes");