function test(start1,start2, step, stop, model)
load_system(strcat(model,'.mdl'));
hold on;
i=0;
color = char('r', 'k', 'b', 'g', 'y', 'm');

set_param(strcat(model,'/Relay1'), 'Off_switch_value', num2str(-30000));
set_param(strcat(model,'/Relay1'), 'On_switch_value', num2str(100000));

while (start2+step*i <= stop)
    i=i+1;
    set_param(strcat(model,'/Relay1'), 'On_switch_value', num2str(start1+step*i));
    set_param(strcat(model,'/Relay1'), 'Off_switch_value', num2str(start2-step*i));
    
    sim(strcat(model,'.mdl'));
    figure(1);
    wy= u.signals.values;    
    plot(tout, wy, 'Color', color(mod(i,6)+1));        
    legendtext{i}= strcat('a=' , num2str(start1+step*i-start2+step*i));
    legend(legendtext);
    
    figure(2);
    wy= e.signals.values;    
    plot(tout, wy, 'Color', color(mod(i,6)+1));        
    legendtext2{i}= strcat('a=' , num2str(start1+step*i-start2+step*i));
    legend(legendtext2);
    hold all;
end

end
