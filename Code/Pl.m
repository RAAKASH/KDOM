function [ d ] = Pl( lengths,theta)
%% Used in Animation function
%  Plots a single frame
%% Program
b=0;  % Vertical offset

x = [0,lengths(2)*cos(theta(2)),lengths(2)*cos(theta(2))+24*cos(theta(3))];
y = [0,lengths(2)*sin(theta(2)),lengths(2)*sin(theta(2))+24*sin(theta(3))];
g = max(lengths);
plot(x,y,'r-o');
hold on;
plot(6,11,'r-o');
hold on;
a = -4:.2:4;
plot( a+6,11+(16 - a.^2).^.5);
hold on;
x5 = [6,6+lengths(5)*cos(theta(5))];
y5 = [11,11+lengths(5)*sin(theta(5))];
plot(x5,y5,'g-o');
hold on;
plot([-30,30],[23,23],'y');
hold off;
hold off;
axis([-30 30  -10 40]);
d=0;

end
