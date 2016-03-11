function [ v,ac ] = Velacc1( l,t )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
w = [0,10,5,5,5,5,5]; % In radians per second
% lv =[0,0,5,0,0,0,7]; 
a =24;
t = pi*t/180;

% f1 = l(i,2)*cos(t(2))+l(i,3)*cos(t(3))-l(i,5)*cos(t(5)) - 6;
% f2 = l(i,2)*sin(t(2))+l(i,3)*sin(t(3))-l(i,5)*sin(t(5)) - 11;
% f3 = (a -l(i,3))*cos(t(3)) + l(i,5)*cos(t(5)) - l(7);
% f4 = (a -l(i,3))*sin(t(3)) + l(i,5)*sin(t(5)) - 12;
for i =1:length(t)
%        L7          W3                        W5                     L3
    M=[  0       ,- l(i,3)*sin(t(i,3)),      +l(i,5)*sin(t(i,5)) ,   +cos(t(i,3));... 
         0       ,+ l(i,3)*cos(t(i,3)) ,     -l(i,5)*cos(t(i,5)) ,   +sin(t(i,3));...    
       - 1       , -(a -l(i,3))*sin(t(i,3)), - l(i,5)*sin(t(i,5)),   -cos(t(i,3));  ...  
         0       , +(a -l(i,3))*cos(t(i,3)) ,+ l(i,5)*cos(t(i,5)),   -sin(t(i,3))   ];

v(i,:)  =  (M\[l(i,2)*sin(t(i,2))*w(2);- l(i,2)*cos(t(i,2))*w(2);0;0])';

K =[   (- l(i,2)*cos(t(i,2))*w(2)^2   - l(i,3)*cos(t(i,3)) * v(i,2)^2  + l(i,5)*cos(t(i,5))* v(i,3)^2+ -2*sin(t(i,3)) * v(i,2)*v(i,4)) ;... 
       (- l(i,2)*sin(t(i,2))*w(2)^2   - l(i,3)*sin(t(i,3))* v(i,2)^2   + l(i,5)*sin(t(i,5))* v(i,3)^2 +2*cos(t(i,3)) * v(i,2)*v(i,4));...    
       (- (a -l(i,3))*cos(t(i,3))* v(i,2)^2   -  l(i,5)*cos(t(i,5))* v(i,3)^2+2*sin(t(i,3)) * v(i,2)*v(i,4))  ;  ...  
        (-(a -l(i,3))*sin(t(i,3))* v(i,2)^2   - l(i,5)*sin(t(i,5))* v(i,3)^2-2*cos(t(i,3)) * v(i,2)*v(i,4) )  ];
    
K =  - K;


% N = [  0       ,- l(i,3)*sin(t(i,3)),      +l(i,5)*sin(t(i,5)),   + cos(t(i,3));... 
%            0      ,+ l(i,3)*cos(t(i,3)) ,     -l(i,5)*cos(t(i,5))  , sin(t(i,3));...    
%      -  1       , -(a -l(i,3))*sin(t(i,3)), - l(i,5)*sin(t(i,5)),     0     ;  ...  
%        0           , +(a -l(i,3))*cos(t(i,3)) ,+ l(i,5)*cos(t(i,5)),     0   ]
% 
%   M=[    0       ,- l(i,3)*sin(t(i,3))  ,      +l(i,5)*sin(t(i,5)) ,   +cos(t(i,3));... 
%          0       ,+ l(i,3)*cos(t(i,3)) ,     -l(i,5)*cos(t(i,5)) ,   +sin(t(i,3));...    
%        - 1       , -(a -l(i,3))*sin(t(i,3)), - l(i,5)*sin(t(i,5)),   -cos(t(i,3));  ...  
%          0       , +(a -l(i,3))*cos(t(i,3)) ,+ l(i,5)*cos(t(i,5)),   -sin(t(i,3))   ]


   ac(i,:) = (M\K)';
   
end
end

