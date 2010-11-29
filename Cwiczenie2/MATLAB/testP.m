function testP(start, step, stop)
load_system('model.mdl');
hold on;
k = start;
color = char('r', 'k', 'b', 'g', 'y', 'm');
set_param('model/Gain1', 'Gain', num2str(0));
set_param('model/Gain2', 'Gain', num2str(0));
while (k <= stop)
    set_param('model/Gain', 'Gain', num2str(k));
    sim('model.mdl');
    wy = simout.signals.values;
    figure(1);
    plot(tout, wy, 'Color', color(mod(i,6)+1));
    k = k + step;
end
end