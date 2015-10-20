% plotSin(f1) function
% given f1, plots the function sin(f1x)

function plotSin(f1)
x = linspace(0, 2*pi, f1*16+1);
h = figure;
set(h, 'visible','off');
plot(x, sin(f1*x), 'b');
saveas(h,'./figures/lect2slide9.png','png');