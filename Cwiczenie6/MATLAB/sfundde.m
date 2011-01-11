function [sys,x0,str,ts] = sfundde(t,x,u,flag,service,topic,item)
%SFUNDDE Simulink DDE sink.

switch flag

  case 0;
   [sys,x0,str,ts]=mdlInitializeSizes(service,topic);
  
  case 2;
    sys = mdlUpdate(t,x,u,item);
    
  case 9;
    sys = mdlTerminate(t,x,u);

  otherwise;
    sys=[];

end


function [sys,x0,str,ts]=mdlInitializeSizes(service,topic)

sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 1;
sizes.NumOutputs     = 0;
sizes.NumInputs      = 1;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;

sys = simsizes(sizes);

str = [];
ts = [-1 0]; % Inherited sample time

x0 = ddeinit(service,topic);
if (x0==0)
  error('DDE initialization failed.');
end;


function sys = mdlUpdate(t,x,u,item)

ddepoke(x, item, u);
sys = x;


function sys = mdlTerminate(t,x,u)

ddeterm(x);
sys = [];
