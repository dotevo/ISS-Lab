function test(start, step, stop, model,func)
load_system(strcat(model,'.mdl'));
hold on;
k = start;
i=0;
color = char('r', 'k', 'b', 'g', 'y', 'm');

set_param(strcat(model,'/Relay1'), 'Off_switch_value', num2str(0));
set_param(strcat(model,'/Relay1'), 'On_switch_value', num2str(0));

while (k <= stop)
    i=i+1;
    set_param(strcat(model,'/Relay1'), 'On_switch_value', num2str(k+1));
    set_param(strcat(model,'/Relay1'), 'Off_switch_value', num2str(k));
    
    sim(strcat(model,'.mdl'));
    figure(1);
    wy= u.signals.values;    
    plot(tout, wy, 'Color', color(mod(i,6)+1));        
    legendtext{i}= strcat('K=' , num2str(k));
    legend(legendtext);
    
    figure(2);
    wy= e.signals.values;    
    plot(tout, wy, 'Color', color(mod(i,6)+1));        
    legendtext2{i}= strcat('K=' , num2str(k));
    legend(legendtext2);
    k = k + step;    
    hold all;
end

end
