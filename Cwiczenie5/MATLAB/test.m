%Przyk³ad u¿ycia:
    %test(1:5,1:5,1:5,2,0.15,95);
    %test(1:5,[2 2 2 2 2],[2 2 2 2 2],2,0.15,95); - jak wp³ywa N
    %test([2 2 2 2 2],1:5,[2 2 2 2 2],2,0.15,95); - jak wp³ywa C
    %test([2 2 2 2 2],[2 2 2 2 2],1:5,2,0.15,95); - jak wp³ywa r

function test(N,C,r,p,i,d)
    %zmieni³em opóŸnienie z 'd' na 'r', ¿eby mieæ parametry regulatora
    %nazwane 'p', 'i', 'd'
    
    load_system('PID.mdl');
    color = char('k', 'b', 'g', 'r', 'm', 'y');
    hold all;
    set_param('PID/Gain', 'Gain', num2str(p));   
    set_param('PID/Gain1', 'Gain', num2str(i));   
    set_param('PID/Gain2', 'Gain', num2str(d)); 
    j=0;
    
    while(size(N,2)>j & size(C,2)>j & size(r,2)>j) 
        set_param('PID/Transport Delay', 'DelayTime', num2str(r(j+1)));        
        
        B=C(j+1)/2*N(j+1);
        set_param('PID/Transfer Fcn', 'Numerator', ['[',num2str(B),']']);        
        
        %Alfa i Beta 
        a=2*N(j+1)/(r(j+1)^2*C(j+1));
        b=1/r(j+1);
        set_param('PID/Transfer Fcn', 'Denominator', ['[1 ',num2str(a+b),' ',num2str(a*b),']']);        
        
        sim('PID.mdl');
        wy = simout.signals.values;    
        plot(tout, wy, strcat('-', color(mod(j,6)+1)));
        j=j+1;
    end
end
