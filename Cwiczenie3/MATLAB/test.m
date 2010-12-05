function test(start, step, stop)
load_system('dwuBez.mdl');
hold on;
k = start;
i=0;
legendtext{1}='';

color = char('r', 'k', 'b', 'g', 'y', 'm');
set_param('dwuBez/Gain', 'Gain', num2str(0));

while (k <= stop)
    i=i+1;
    set_param('dwuBez/Gain', 'Gain', num2str(k));
    sim('dwuBez.mdl');
    wy = simout.signals.values;
    figure(1);
    plot(tout, wy, 'Color', color(mod(i,6)+1));        
    legendtext{i}= strcat('K=' , num2str(k));
    legend(legendtext);
    hold all;     
    k = k + step;    
end

end
