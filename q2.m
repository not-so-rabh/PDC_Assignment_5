% x = fsolve(@func,[0.001 0.0001]);
x0=[0.0001,0.00001]';
[x,fval]=fsolve(@(x)solution(x),x0)
Gp = tf([2,2],[10 7 1],"inputdelay",2);
Kc = 1.0833
t = x(2);
Gc=tf([Kc*t Kc],[t 0]);
L=series(Gp,Gc);
hbp = bodeplot(L)
hbp.showCharacteristic('AllStabilityMargins')
RtoY=feedback(L,1);
stepplot(RtoY)

Sens=1/(1+Gp*Gc);
S = 1/(1+(Gp*Gc))
w = linspace(0.001,50, 1000000);
[magnitude,phase] = bode(S,w);
temp = trapz(1, log(abs(magnitude(:))))

