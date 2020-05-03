Kc = 27.376;
s = tf('s')
num = (s^2+4*s+8)
den = s*(Kc*(s^2 + 4*s +8)+s*(s+1)*(s+3)*(s+10))
Lg = num/den

