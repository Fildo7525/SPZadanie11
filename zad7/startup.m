%open('cv7_ident');
clear;

load("signal_s_5V_.mat");
logsout = out.get('logsout');
u_signal = logsout.get('u');
y_signal = logsout.get('y');
um = u_signal.Values.Data;
ym = y_signal.Values.Data;
tm = y_signal.Values.Time ;

indxs = find(tm > 10); 

U0 = 5; %4 %5
Y0 = 8.6425k; %6.94 %8.638

u = um(indxs)-U0;
y = ym(indxs)-Y0;
t = tm(indxs) ;

z = iddata(y,u, 0.01) ;

na = 8 %10 %8 %3
nb = 5 %3  %5 %3
nk = 1


n = [na,nb,nk] ;

m = arx(z,n) 

compare(z,m);

[a,b] = polyform(m) 

sysdis = tf(b,a,0.01)

ys = sim(m,u) ;

Odchylka = sum((y-ys).^2)

figure(2)
plot(t,y,t,ys, "LineWidth", 2);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
xlabel('t[s]');
ylabel('y[V]');
legend('y(t)','y_s(t)');
title("Porovnanie meranych a simulovanych dat")
grid on;

figure(3)
plot(out.logsout{1}.Values);
grid on;

figure(4)
plot(out.logsout{2}.Values);
grid on;
