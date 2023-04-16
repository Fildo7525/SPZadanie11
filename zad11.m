clc;
clear;
close all;

load("out11.mat");
data_wanted = [29.3 33.5 38 42 46.5 49.5 52.5 54 54.5 55 55];
data =        [29 33 37 41 45 47.5 50 51.3 51.6 52 52];
e = data_wanted - data;
u = [0 10 20 30 40 50 60 70 80 90 100]';
l=ones(size(u)); % jednotkovy vektor

% a) ----

h1=[l,u]; % matica H
theta1=inv(h1'*h1)*h1'*data'; % odhad parametrov
y1=h1*theta1;   % vektor vystupov modelu
% e=y-y1;   % vektor odchylok
q1=e'*e;      % suma kvadratov odchylok 

% b) ----

u2 = u.^2;
h2 = [l,u,u2];
theta_kvadr=inv(h2'*h2)*h2'*data'; % odhad parametrov 
y2 = h2 * theta_kvadr;

% c) ----

h3 = [l,sqrt(u)];
theta_odmoc = inv(h3'*h3)*h3'*data';
y3 = h3 * theta_odmoc;


% prevodova charakteristika
figure(1)
hold on
plot(u,data_wanted,'b', 'LineWidth', 2)
plot(u,data,'r','LineWidth', 2)
plot(u,y1,'g','LineWidth', 2)
% plot(u,y2,'k','LineWidth', 2)
% plot(u,y3,'c','LineWidth', 2)
grid on
legend('Ziadane hodnoty', ...
	'Merane hodnoty', ...
	'Linearna regresia')
% 	'Kvadraticka regresia', ...
% 	'Odmocninova regresia', ...
% 	"Location","northwest")
ylabel("T2 [˚C]")
xlabel("Vykon spiraly [%]")
hold off


% vykreslenie grafu ----

% figure(2)
% x= 0:0.2:2264.4;
% y_graph= out.ScopeData.signals.values;
% y2_graph= out.ScopeData.signals(2).values;
% plot (x,y_graph)
% hold on
% plot (x,y2_graph)
% xlabel("Temperature [°C]")
% ylabel("Time [s]")
% xlim([0, 2264.4])
% legend("T2")
% grid on
