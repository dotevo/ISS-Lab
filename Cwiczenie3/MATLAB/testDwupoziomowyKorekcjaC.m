function testDwupoziomowyKorekcjaC(start,step, stop)
load_system('dwupoziomowyKorekcja.mdl');
hold on;
i=1;
color = char('y', 'k', 'b', 'g', 'r', 'm');
legendtext{1}='';
legendtext1{1}='';

while (start+step*i <= stop)
        set_param('dwupoziomowyKorekcja/Constant', 'value', num2str(start+step*i));
        sim('dwupoziomowyKorekcja.mdl');
        figure(1);
        uwy= u.signals.values;
        plot(tout, uwy, 'Color', color(mod(i,6)+1));
        legendtext{i}= strcat('C=' , num2str(start+step*i));
        legend(legendtext1);
        figure(2);
        ewy= e.signals.values;
        plot(tout, ewy, 'Color', color(mod(i,6)+1));
        legendtext1{i}= strcat('C=' , num2str(start+step*i));
        legend(legendtext1);
        i=i+1;
        hold all;
end
end