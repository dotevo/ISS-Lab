function test2(u)
   k = 0.1;
   epsilon = 0.1;
   delta = 0.1
   u1(1) = u(1);
   u2(1) = u(2);
   y(1) = funkcja1([u(1) u(2)]);
   i = 1;
   d(1) = 1;
   
   while(epsilon < abs(d(i)))
       a=(funkcja1([u1(i)+delta u2(i)+delta]) - funkcja1([u1(i) u2(i)]));
       d(i+1) =  a / delta;
       u1(i+1) = u1(i) - sign(a)*k * d(i+1);
       u2(i+1) = u2(i) - sign(a)*k * d(i+1);
       y(i+1)= funkcja1([u1(i) u2(i)]);
       i = i + 1;
   end
   
   figure(1);
   hold on;
   plot(u1, y, '*');
   plot(u2, y, '*');
   figure(2);
   plot(d, '-b');
end