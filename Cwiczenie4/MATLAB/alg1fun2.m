function alg1fun2(u, t, kstart, kstep, kstop)
    color = char('y', 'k', 'b', 'g', 'r', 'm');
    hold all;
    k = kstart;
    c = 1;
    j=1;
    
    while(k <= kstop)
        epsilon = 0.1;
        delta = 0.1
        u1(1) = u(1);
        u2(1) = u(2);
        y(1) = funkcja2([u(1) u(2)], t);
        i = 1;
        d(1) = 1;
        
        while(epsilon < abs(d(i)))
            a=(funkcja2([u1(i)+delta u2(i)+delta], t) - funkcja2([u1(i) u2(i)], t));
            d(i+1) =  a / delta;
            u1(i+1) = u1(i) - k * d(i+1);
            u2(i+1) = u2(i) - k * d(i+1);
            y(i+1)= funkcja2([u1(i) u2(i)], t);
            i = i + 1;
        end

        figure(1);
        hold on;
        plot(u1, y, '*b');
        plot(u2, y, '*r');
        figure(2);
        hold on;
        plot(d, strcat('-', color(mod(c,6)+1)));
        c = c + 1;

        legendtext1{j}= strcat('y=' , num2str(y(i)), ', u=[', num2str(u1(i)), ' ', num2str(u2(i)), '], n=',num2str(i));
        legend(legendtext1);
        j = j+1;
        
        k = k + kstep;
        clear u1;
        clear u2;
        clear d;
        clear y;
    end
end