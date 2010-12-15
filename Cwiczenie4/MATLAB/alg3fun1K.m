function alg3fun1K(u, kstart, kstep, kstop,delta)
    color = char('y', 'k', 'b', 'g', 'r', 'm');
    hold all;
    k = kstart;
    c = 1;
    j=1;
    while(k <= kstop)
        epsilon = 0.1;

        u1(1) = u(1);
        u2(1) = u(2);   
        y(1) = funkcja1([u(1) u(2)]);
        %krok roboczy=delta
        deltaM1=[delta 0];
        deltaM2=[0 delta];
        n = 1;
        d1(1) = 1;
        d2(1) = 1;
        e(1)=epsilon+1;
        
        while(epsilon < abs(e(n)))
            d1(n+1)=(funkcja1([u1(n) u2(n)]+deltaM1)-funkcja1([u1(n) u2(n)]-deltaM1))/delta;
            d2(n+1)=(funkcja1([u1(n) u2(n)]+deltaM2)-funkcja1([u1(n) u2(n)]-deltaM2))/delta;
            u1(n+1)=u1(n)-k*d1(n);
            u2(n+1)=u2(n)-k*d2(n);
            e(n+1)=d1(n+1)^2+d2(n+1)^2;
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

        legendtext1{j}= strcat('y=' , num2str(y(i)), ', u=[', num2str(u1(i)), ' ', num2str(u2(i)), ']');
        legend(legendtext1);
        j = j+1;
        
        k = k + kstep;
        clear u1;
        clear u2;
        clear d1;
        clear d2;
        clear y;
    end
end

