function alg2fun1(u, kstart, kstep, kstop)
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
        y(1) = funkcja1([u(1) u(2)]);
        i = 1;
        d(1) = 1;
        
        while(epsilon < abs(d(i)))
            a=(funkcja1([u1(i)+delta u2(i)+delta]) - funkcja1([u1(i) u2(i)]));
            d(i+1) =  a / delta;
            u1(i+1) = u1(i) - sign(a)*k * d(i+1);
            u2(i+1) = u2(i) - sign(a)*k * d(i+1);
            y(i+1)= funkcja1([u1(i) u2(i)]);
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

        legendtext1{j}= strcat('y=' , num2str(y(i)), ', u=[', num2str(u1(i)), ' ', num2str(u2(i)), ']');
        legend(legendtext1);
        j = j+1;
        
        k = k + kstep;
        clear u1;
        clear u2;
        clear d;
        clear y;
    end
end
