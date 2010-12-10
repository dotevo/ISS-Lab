function y = funkcja1(u, t)
    %y = (u(1) - (a + A*sin(w1*t)))^2 + (u(2) - (b + B*sin(w2*t)))^2 + c
    y = (u(1) - (1 + 2*sin(0.5*t)))^2 + (u(2) - (2 + 4*sin(0.25*t)))^2 + 3
end