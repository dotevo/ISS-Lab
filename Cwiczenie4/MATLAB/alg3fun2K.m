function alg3fun2K(u,t, kstart, kstep, kstop,delta)
    color = char('y', 'k', 'b', 'g', 'r', 'm');
    hold all;
    k = kstart;
    c = 1;    
    legendtext{1}='';
    while(k <= kstop)
        epsilon = 0.1;

        u1(1) = u(1);
        u2(1) = u(2);   
        y(1) = funkcja2([u(1) u(2)],t);
        %krok roboczy=delta
        deltaM1=[delta 0];
        deltaM2=[0 delta];        
        n = 1;
        d1(1) = 1;
        d2(1) = 1;
        e(1)=epsilon+1;
        
        while(epsilon < abs(e(n)))
            d1(n+1)=(funkcja2([u1(n) u2(n)]+deltaM1,t)-funkcja2([u1(n) u2(n)]-deltaM1,t))/delta;
            d2(n+1)=(funkcja2([u1(n) u2(n)]+deltaM2,t)-funkcja2([u1(n) u2(n)]-deltaM2,t))/delta;
            u1(n+1)=u1(n)-k*d1(n);
            u2(n+1)=u2(n)-k*d2(n);
            e(n+1)=d1(n+1)^2+d2(n+1)^2;
            y(n+1)= funkcja2([u1(n+1) u2(n+1)], t);
            n=n+1;       
        end
        

        figure(1);
        hold on;
        plot(u1, y, '*b');
        plot(u2, y, '*r');
        figure(2);
        hold on;
        plot(d1, strcat('-', color(mod(c,6)+1)));
        plot(d2, strcat('-', color(mod(c,6)+1)));
        c = c + 1;

        legendtext{c}= strcat('y=' , num2str(y(n-1)), ', u=[', num2str(u1(n-1)), ' ', num2str(u2(n-1)), ']', 'n=',num2str(n));
        legend(legendtext);
        
        
        k = k + kstep;
        clear u1;
        clear u2;
        clear d1;
        clear d2;
        clear y;
    end
end

