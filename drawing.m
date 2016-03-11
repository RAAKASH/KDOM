%% For plotting graphs
% Dont forget to add the left over theta tan inv(1.5/12)

plot(B(:,2),B(:,3),B(:,2),B(:,4))
xlabel('Angle of crank in degrees ');
ylabel('Angle displaced in degrees');
axis([0 360 0 360]);
legend('Coupler','Rocker');

W = W*pi;
plot(W(:,1),W(:,3))
xlabel('Angle of crank in degrees');
ylabel('Angular velocity of rocker in rad/s');
pause;
plot(W(:,1),a(:,2))
xlabel('Angle of crank in degrees');
ylabel('Angular acceleration of rocker in rad/s^2');

     