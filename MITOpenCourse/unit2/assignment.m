% Unit2 assignments exercises

% Exercise 1: Semilog plot
numStudents = [15 25 55 115 144];
years = [1 2 3 4 5];

h = figure
semilogy(numStudents);
loglog(years, numStudents,'--s',...
    'LineWidth',4,...
    'Color', [1 0 0], ...
    'MarkerEdgeColor','m',...
    'MarkerFaceColor','m',...
    'MarkerSize',10);
xlabel('Time (years)');
ylabel('log(numStudents)');
xlim([0 6])
title('Log(Students) / Year');
saveas(h, './figures/ex1.png', 'png');
clear all; close all;

% Exercise 3: Bar Graph
g = figure;
bar(1:5,rand(1,5), 'r');
saveas(g, './figures/ex3.png', 'png');
clear all; close all;

% Exercise 4: Interpolation of surface plots
l = figure;
Z0 = rand(5,5);
[X0, Y0] = meshgrid([1:5]);
[X1, Y1] = meshgrid([1:.1:5]);
Z1 = interp2(X0, Y0, Z0, X1, Y1);
surf(Z1);
shading interp;
colormap(jet);
hold on;
colorbar;
caxis([0 1]);
contour(Z1,'LineWidth',2);
saveas(l, './figures/ex4.png', 'png');
clear all; close all;

% Exercise 5: findNearest function
mat = rand(5:5);
[index, value] = findNearest(mat, 0.23);


