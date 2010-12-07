function test(n, step, stop, flag)
load_system('trojpoziomowy.mdl');
hold on;
i=1;
color = char('y', 'k', 'b', 'g', 'r', 'm');

set_param('trojpoziomowy/Relay1', 'Off_switch_value', num2str(n-step));
set_param('trojpoziomowy/Relay1', 'On_switch_value', num2str(n+step));
set_param('trojpoziomowy/Relay2', 'Off_switch_value', num2str(-(n+step)));
set_param('trojpoziomowy/Relay2', 'On_switch_value', num2str(-(n-step)));

while (step*i <= stop)
    set_param('trojpoziomowy/Relay1', 'Off_switch_value', num2str(n-step*i));
    set_param('trojpoziomowy/Relay1', 'On_switch_value', num2str(n+step*i));
    set_param('trojpoziomowy/Relay2', 'Off_switch_value', num2str(-(n+step*i)));
    set_param('trojpoziomowy/Relay2', 'On_switch_value', num2str(-(n-step*i)));
    
    sim('trojpoziomowy.mdl');
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
        plot([0 30], [n n], '-r');
        plot([0 30], [-n -n], '-r');
        plot([0 30], [n+step*i n+step*i], strcat('--', color(mod(i,6)+1)));
        plot([0 30], [n-step*i n-step*i], strcat('--', color(mod(i,6)+1)));
        plot([0 30], [-(n-step*i) -(n-step*i)], strcat('--', color(mod(i,6)+1)));
        plot([0 30], [-(n+step*i) -(n+step*i)], strcat('--', color(mod(i,6)+1)));
    end
    
    i=i+1;
    hold all;
end
end