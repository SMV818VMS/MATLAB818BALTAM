% Ex10 seriesConvergence.m
% Plot geometric and p series

%%%
% Geometric series
%%%

% Define p and k
p = 0.99;
k = linspace(0, 1000, 1001);

% Calculate each term in the series
geomSeries = p.^k;

% Calculate the value of the infinite series
G = sum(geomSeries); % The same than
G = 1/(1 - p);

% Plot the infinite series
figure(1)
set(1, 'visible','off');
x = [0 max(k)];
y = [G G];
plot(x, y, 'r');
% On the same plot the finite series
hold on;
plot(k, cumsum(geomSeries), 'b');
xlabel('Index');
ylabel('Sum');
title('Convergence of geometric series with p = 0.99');
legend('Infinite sum', 'Finite sum');
ylim([0 105]);
saveas(1,'../figures/ex10_geomSeries.png','png');

%%%
% p-series
%%%
p = 2;
n = linspace(1, 500, 500);
pSeries = 1./(n.^p);

P = (pi^2)/6;

figure(2)
set(2, 'visible','off');
x = [0 max(n)];
y = [P P];
plot(x, y, 'r');
hold on;
plot(n, cumsum(pSeries), 'b');
xlabel('Index');
ylabel('Sum');
title('Convergence of p-series with p = 2');
legend('Infinite sum', 'Finite sum');
ylim([1 1.8]);
saveas(2,'../figures/ex10_pSeries.png','png');