l = [0;5;6;0;4;5;5];
t = [21;1;70;15;51;50;0];
t =t*pi/180 ;
var = [t(3);t(5);l(3);l(7)];
% var = [t(3);l(7)];
i=0;
A = zeros(size(t))';
B =zeros(size(l))';
 while( t(2)  <= 2*pi )
    i = i+1;
     [var] = [t(3);t(5);l(3);l(7)];
%      var = [t(3);l(7)];
     [var,f] =  NR(var,l,t);
%       t(3) =  var(1);
%       l(7) =  var(2);
        t(3) =  var(1);
        t(5) =  var(2);
        l(3) =  var(3);
        l(7) =  var(4);
      
 
      
  d =  Pl( l,t); 
  pause(.001);
if(f==0)
A (i,:) = t'*180/pi ;
B (i,:) = l' ;
t (2) = t(2) +2/180*pi ;

elseif(f==1)
 A(i,:) = [0,0,0,0,0,0,0];
 B(i,:) = [0,0,0,0,0,0,0];
 t (2) = t(2) + 2/180*pi ;
fprintf('broke!!!!!!! at %d',i);
 continue;
 end
      
 end

A = mod(A,360);
[C,D] = Postprocessing( A );
[E,F] =Postprocessing(B);
[v,a]=Velacc1( E,C);
xlswrite('second',A,'theta');
xlswrite('second',B,'linklengths');
xlswrite('second',v,'velocities');
xlswrite('second',a,'accelerations');
% e = Anim( l,C,D,1,1,.001 );
[ d ] = graphs( C,v,a );
  Final =     [C(:,2),v,a];
xlswrite('Second Data',Final,'complete data');

plot(C(5:end,2),C(5:end,3),C(5:end,2),C(5:end,5));
xlabel('Angle of link 2 in degrees');
ylabel('Angle displaced by other links in degrees');
legend('link 3','link 5');

plot(C(5:end,2),E(5:end,3),C(5:end,2),E(5:end,7));
xlabel('Angle of link 2 in degrees');
ylabel('Linear displacement by other links (cm)');
legend('link 4','link 6');