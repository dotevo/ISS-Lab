function testPID2(td,k,Ti)
load_system('model.mdl');
hold on;
set_param('model/Gain', 'Gain', num2str(k));
set_param('model/Gain1', 'Gain', num2str(Ti));
set_param('model/Gain2', 'Gain', num2str(td));
sim('model.mdl');
wy = simout.signals.values;
figure(1);
plot(wy);
end