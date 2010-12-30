%Przyk³ad u¿ycia:
    %test(1:5,1:5,1:5);

function test(N,C,d)
    load_system('PID.mdl');
    color = char('y', 'k', 'b', 'g', 'r', 'm');
    hold all;

            
    i=0;
    while(size(N,2)>i&size(C,2)>i&size(d,2)>i)   
        
        %tu jeszcze trzeba ten e^-sd wrzucic :P        
        
        
        B=C(i+1)/2*N(i+1);
        set_param('PID/Transfer Fcn', 'Numerator', ['[',num2str(B),']']);        
        
        %Alfa i Beta 
        a=2*N(i+1)/(d(i+1)^2*C(i+1));
        b=1/d(i+1);
        set_param('PID/Transfer Fcn', 'Denominator', ['[1 ',num2str(a+b),' ',num2str(a*b),']']);        
        
        sim('PID.mdl');
        wy = simout.signals.values;    
        plot(tout, wy, strcat('-', color(mod(i,6)+1)));
        i=i+1;
    end
end
