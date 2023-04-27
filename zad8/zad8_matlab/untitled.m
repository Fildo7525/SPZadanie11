Array=readmatrix('file.csv');

subplot(4,2,1)
plot(Array(:,1), Array(:,2))
xlabel('[s]') 
ylabel('[m]') 
title('poloha klbu 1')

subplot(4,2,2)
plot(Array(:,1), Array(:,3))
xlabel('[s]') 
ylabel('[m/s]') 
title('rychlost klbu 1')

subplot(4,2,3)
plot(Array(:,1), Array(:,4))
xlabel('[s]') 
ylabel('[m/s^2]') 
title('zrychlenie klbu 1')

subplot(4,2,4)
plot(Array(:,1), Array(:,5))
xlabel('[s]') 
ylabel('[m/s^3]') 
title('trh klbu 1')

subplot(4,2,5)
plot(Array(:,1), Array(:,6))
xlabel('[s]') 
ylabel('[m]')  
title('poloha klbu 4')

subplot(4,2,6)
plot(Array(:,1), Array(:,7))
xlabel('[s]')
ylabel('[m/s]') 
title('rychlost klbu 4')

subplot(4,2,7)
plot(Array(:,1), Array(:,8))
xlabel('[s]') 
ylabel('[m/s^2]') 
title('zrychlenie klbu 4')

subplot(4,2,8)
plot(Array(:,1), Array(:,9))
xlabel('[s]') 
ylabel('[m/s^3]') 
title('trh klbu 4')
