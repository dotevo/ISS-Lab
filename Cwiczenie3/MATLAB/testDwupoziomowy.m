function test(step, stop, flag)
load_system('dwupoziomowy.mdl');
hold on;
i=1;
color = char('y', 'k', 'b', 'g', 'r', 'm');

set_param('dwupoziomowy/Relay1', 'Off_switch_value', num2str(-step));
set_param('dwupoziomowy/Relay1', 'On_switch_value', num2str(step));

while (step*i <= stop)
    set_param('dwupoziomowy/Relay1', 'On_switch_value', num2str(step*i));
    set_param('dwupoziomowy/Relay1', 'Off_switch_value', num2str(-step*i));
    
    sim('dwupoziomowy.mdl');
    figure(1);
    uwy= u.signals.values;    
    plot(tout, uwy, 'Color', color(mod(i,6)+1));        
    %legendtext1{i}= strcat('a=' , num2str(step*i));
    %legend(legendtext1);
    
    figure(2);
    ewy= e.signals.values;    
    plot(tout, ewy, 'Color', color(mod(i,6)+1));        
    %legendtext2{i}= strcat('a=' , num2str(step*i));
    %legend(legendtext2);
    
    if flag
        hold on;
        plot([0 30], [0 0], '-r');
        plot([0 30], [step*i step*i], strcat('--', color(mod(i,6)+1)));
        plot([0 30], [-step*i -step*i], strcat('--', color(mod(i,6)+1)));
    end
    
    i=i+1;
    hold all;
end
end