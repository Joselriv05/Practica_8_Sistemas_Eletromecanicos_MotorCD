%Función del motor DC
function dx=MOTOR_DC(t,x)
%-----Definimos nuestro parametros------%
Ra=2; %Resistencia
Kt=0.01; %Constante del torque
b=0.0012; %Amortiguador
Lu=0.023; %Inductancia
Ke=0.01; %Constante del voltaje
J=0.001; %Inercia
Vin=5; %Voltaje inicial
%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(3,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=(1/Lu)*(-Ke*x(3)-Ra*x(1)+Vin);
dx(2)=x(3);
dx(3)=(1/J)*(Kt*x(1)-b*x(3));
%----------------------------------------------------------------------%