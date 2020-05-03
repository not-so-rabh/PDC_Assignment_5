
function f=func(x)
    Kp = 1.0833;
    w = x(1);
    k = x(2);
    f(1) = ((2*sqrt(w^2+1))*sqrt((Kp^2+(k/w)^2))) - (sqrt((25*w^2+1))*sqrt((4*w^2+1)));
    f(2) =atan(Kp/k) -2*w - atan(k/(w*Kp))-atan(5*w) - atan(2*w) + 2.0944;
end

