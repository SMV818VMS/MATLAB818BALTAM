% Ex11 throwBall.m
% Simulates and plot the trajectory of a ball being throw

% Defining some constants
h = 1.5; % initial height
g = 9.8; % gravitational acceleration
v = 4; % initial velocity
a = 45; % initial angle
t = linspace(0, 1, 1000); % time

x = v*cos(a*(pi/180))*t;
y = h + v*sin(a*(pi/180))*t - 0.5*g*t.^2;

neg = find(y < 0);
distance_achieved = x(neg(1));
disp(['the ball hits the ground at a distance of ' num2str(distance_achieved) ' meters'])

figure(1)
set(1, 'visible','off');
plot(x, y, 'b');
hold on;
plot([0 max(x)], [0 0], '--');
xlabel('Distance (m)');
ylabel('Ball height (m)');
title('Ball trajectory');
ylim([-1 2]);
saveas(1,'../figures/ex11.png','png');