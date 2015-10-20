% plotSin(f1) function
% given f1, plots the function sin(f1x)

function plotSin(f1, f2)
    x = linspace(0, 2*pi, f1*16+1);
if nargin == 1
    h = figure;
    set(h, 'visible','off');
    plot(x, sin(f1*x) , '--s','LineWidth',2,...
    'Color', [1 0 0], ...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','k',...
    'MarkerSize',5)
    saveas(h,'./figures/lect2slide9.png','png');
elseif nargin == 2
    y=linspace(0,2*pi,round(16*f2)+1);
    [X,Y]=meshgrid(x,y);
    Z=sin(f1*X)+sin(f2*Y);
    subplot(2,1,1); imagesc(x,y,Z); colorbar;
    axis xy; colormap hot
    subplot(2,1,2); surf(X,Y,Z);
else
    disp('Incorrect number of arguments, I only accept 1')
end

    