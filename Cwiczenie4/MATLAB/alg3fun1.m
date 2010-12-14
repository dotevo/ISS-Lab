%test3([-10 40],1,0.1,1);
function alg3fun1(u,k,epsilon,delta)      
   %obliczanie pierwszych wartoœci :)
   u1(1) = u(1);
   u2(1) = u(2);   
   y(1) = funkcja1([u(1) u(2)]);
   %krok roboczy=delta
   deltaM1=[delta 0];
   deltaM2=[0 delta];
   
   n = 1;
   d1(1) = 1;
   d2(1) = 1;
   e(1)=epsilon+1;
   %TODO
   while(epsilon < abs(e(n)))
       d1(n+1)=(funkcja1([u1(n) u2(n)]+deltaM1)-funkcja1([u1(n) u2(n)]-deltaM1))/delta;
       d2(n+1)=(funkcja1([u1(n) u2(n)]+deltaM2)-funkcja1([u1(n) u2(n)]-deltaM2))/delta;
       u1(n+1)=u1(n)-k*d1(n);
       u2(n+1)=u2(n)-k*d2(n);
       e(n+1)=d1(n+1)^2+d2(n+1)^2;
              
       n=n+1;       
   end
   
   figure(1);
   hold on;
   plot(u1, y, '*');
   plot(u2, y, '*');
   figure(2);
   plot(d1);
   plot(d2);
end

