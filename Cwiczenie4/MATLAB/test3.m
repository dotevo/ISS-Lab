function test3(u,k,e,delta)      

   %obliczanie pierwszych wartoœci :)
   u1(1) = u(1);
   u2(1) = u(2);   
   y(1) = funkcja1([u(1) u(2)]);
   %krok roboczy=delta
   deltaM(1)=[delta 0];
   deltaM(2)=[0 delta];
   
   n = 1;
   d1(1) = 1;
   d2(1) = 1;
   %TODO
   %while(epsilon < abs(d(n)))
   %    d1(i+1)=funkcja1([u1(i) u2(i)]+deltaM(1))-funkcja1([u1(i) u2(i)]+deltaM(1));
   %end
   
   figure(1);
   hold on;
   plot(u1, y, '*');
   plot(u2, y, '*');
   figure(2);
   plot(d, '-b');
end

