function test(start, step, stop, model,func)
load_system(strcat(model,'.mdl'));
hold on;
k = start;
i=0;
legendtext{1}='';

color = char('r', 'k', 'b', 'g', 'y', 'm');
set_param(strcat(model,'/Gain'), 'Gain', num2str(0));

while (k <= stop)
    i=i+1;
    set_param(strcat(model,'/Gain'), 'Gain', num2str(k));
    sim(strcat(model,'.mdl'));
    wy= u.signals.values;;
    if(func=='e')
        wy = e.signals.values;    
    end
    figure(1);
    plot(tout, wy, 'Color', color(mod(i,6)+1));        
    legendtext{i}= strcat('K=' , num2str(k));
    legend(legendtext);
    hold all;     
    k = k + step;    
end

end
