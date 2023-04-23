%open('cv7_ident');
load("4skoky.mat");
logsout = out.get('logsout')
u_signal = logsout.get('u')
y_signal = logsout.get('y')
um = u_signal.Values.Data
ym = y_signal.Values.Data
tm = y_signal.Values.Time 

indxs = find(tm > 10); 

U0 = 4; %4 %5
Y0 = 6.98; %6.94 %8.638

u = um(indxs)-U0
y = ym(indxs)-Y0
t = tm(indxs) 

z = iddata(y,u, 0.01) 

na = 2
nb = 2
nk = 1


n = [na,nb,nk] 

m = arx(z,n) 

compare(z,m)

[a,b] = polyform(m) 

sysdis = tf(b,a,0.01)

ys = sim(m,u) 

figure(2)
plot(t,y,t,ys)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
xlabel('t[s]')
ylabel('y[V]')
legend('y(t)','y_s(t)')

figure(3)
plot(out.logsout{1}.Values)

figure(4)
plot(out.logsout{2}.Values)
