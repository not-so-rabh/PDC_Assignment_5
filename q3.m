
TF1 = tf([0 12],[1 3 2])
stepplot(TF1)
Gp = tf([0 2],[1 3 -10],'InputDelay',1)
GC2 = 4.217;
TF2 = (GC2*Gp)/(1+(GC2*Gp))
stepplot(TF2)

s=tf('s');
Ga = (1-s/2+(s^2)/12)/(1+s/2+(s^2)/12)
Gpf = (2*Ga)/(s^2+3*2-10)
G3 = 2.21
TF3 = (G3*Gpf)/(1+G3*Gpf)
stepplot(TF3)