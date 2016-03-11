function [ d ] = graphs( C,v,a )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

plot(C(5:end,2) , v(5:end,1));

xlabel ('Angle of Crank in degrees');

ylabel ('Slider  velocity of link 6 (m/s)');
pause;
plot(C(5:end,2) , v(5:end,2));
xlabel ('Angle of Crank in degrees');
ylabel ('Angular velocity of link 3 (rad/s)');
pause;
plot(C(5:end,2) , v(5:end,3));
xlabel ('Angle of Crank in degrees');
ylabel ('Angular velocity of link 5 (rad/s)');
pause;
plot(C(5:end,2) , v(5:end,4));
xlabel ('Angle of Crank in degrees');
ylabel ('slider velocity of link 4(m/s)');


plot(C(5:end,2) , a(5:end,1));
xlabel ('Angle of Crank in degrees');
ylabel ('Slider  acceleration of link 6 (m/s^2)');
pause;
plot(C(5:end,2) , a(5:end,2));
xlabel ('Angle of Crank in degrees');
ylabel ('Angular acceleration of link 3 (rad/s^2)');
pause;
plot(C(5:end,2) , a(5:end,3));
xlabel ('Angle of Crank in degrees');
ylabel ('Angular acceleration of link 5 (rad/s^2)');
pause;
plot(C(5:end,2) , a(5:end,4));
xlabel ('Angle of Crank in degrees');
ylabel ('slider acceleration of link 4(m/s^2)');
d = 0;
end

