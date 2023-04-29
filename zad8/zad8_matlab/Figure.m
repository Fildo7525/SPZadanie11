
prac_bod = 5;
cas_skok = 10;
velkost_skok = 2;
Kp = 1;
Ki = 4;
Kd = 0.016;
n_filter = 250;

load("test7.mat")

figure 
hold on
plot(out.y.Time,out.y.Data)
plot(out.r.Time,out.r.Data)
grid on
xlabel("t[s]")
xlabel("y,r[pu]")
legend('y(t)', 'r(t)')
title('Východzie')


