
S = 1/(1+(Gp*Gc))
w = linspace(0.001,50, 1000000);
[magnitude,phase] = bode(S,w);
trapz(1, log(abs(magnitude(:))))

