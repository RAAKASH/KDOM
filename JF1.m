function [ del , e ] = JF1( l,t )
t = process(t);
a =24; 
f1 = l(2)*cos(t(2))+l(3)*cos(t(3))-l(5)*cos(t(5)) - 6;
f2 = l(2)*sin(t(2))+l(3)*sin(t(3))-l(5)*sin(t(5)) - 11;
f3 = (a -l(3))*cos(t(3)) + l(5)*cos(t(5)) - l(7);
f4 = (a -l(3))*sin(t(3)) + l(5)*sin(t(5)) - 12;

f = [f1; f2;f3;f4];


F = [  -l(3)*sin(t(3))      ,   l(5)*sin(t(5)) , cos(t(3))  ,   0;...
        l(3)*cos(t(3))      , - l(5)*cos(t(5)) , sin(t(3))  ,   0;...
       -(a -l(3))*sin(t(3)) ,  -l(5)*sin(t(5)) ,- cos(t(3)) ,  -1; ...
       (a -l(3))*cos(t(3))  ,   l(5)*cos(t(5)) , - sin(t(3)),   0 ];

f = f *-1;


if(norm(F)>=10^-10)
del = F\f;
% pause
else
    fprintf(' IN JF1 %d',norm(F))
    del = [1;1;1;1]; 
    l;
    t;
     pause;    
end
e = norm(del);

end

