% Unit2 script: VISUALIZATION AND PROGRAMMING
% script including the trials and ideas presented in the lecture 2

%%%
% FUNCTIONS
%%%

% What would the following commands return
a = zeros(2, 4, 8); % M-by-N-by-P-by-... array of zeros.
D = size(a); % 2 4 8
[m, n] = size(a); % m = 2, n = 32
[x, y, z] = size(a); % x = 2, y = 4, z = 8
m2 = size(a,2); % 4

% Once created the function plotSin we can easily acces to it
plotSin(2);

%%%
% FLOW CONTROL
%%%

% Exercise: conditional
% Modification of the function plotSin
% plotSin(2,4); % Two inputs were given
% plotSin(); plotSin(1,2,4); % Incorrect number of arguments, I only accept 1

%%%
% LINE PLOTS
%%%
x = linspace(0,10,10);
figure
plot(x,x, 'k.-'); % Plots in black dots + line
plot(x,x, '.'); % plots only dots

% Line and marker options
figure
x=-pi:pi/100:pi;
y=cos(4*x).*sin(10*x).*exp(-abs(x));
plot(x, y ,'--s','LineWidth',2,...
    'Color', [1 0 0], ...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor','g',...
    'MarkerSize',10)

% Cartesian Plots
figure
plot(x,y,'k-');

% The same is applied for semilog and loglog plots
figure
semilogx(x, y, 'k');
semilogy(y, 'r.-');
loglog(x, y);

figure; x=0:100; semilogy(x, exp(x), 'k.-');

% 3D line plots
figure;
time=0:0.001:4*pi;
x=sin(time);
y=cos(time);
z=time;
plot3(x,y,z,'k','LineWidth',2);
zlabel('Time');
close all

% Slide 23 --> axis modes
% Slide 24 --> multiple plots in one Figure

% Exercise: ADVANCED PLOTTING
plotSin(6)
% plotSin(1,2)
close all % close all figure

%%%
% VISUALIZING MATRICES
%%%
figure;
mat = reshape(1:10000,100,100);
imagesc(mat);
colorbar;
caxis([3000 7000]);
close all

% slide 31 to define special color maps

% SURFACE PLOTS
x = -pi:0.1:pi;
y = -pi:0.1:pi;
[X,Y] = meshgrid(x, y);
Z = sin(X).*cos(Y);
surf(x,y,Z);
shading interp; % Slide 34 surf options
close all

% CONTOUR
figure(1)
contour(X,Y,Z,'LineWidth',2)
hold on
mesh(X,Y,Z)
saveas(1, './figures/contourplussurf.png', 'png');
close all

% EXERCISE: Modifying plotSin
plotSin(3,4);
close all

% SPECIAL PLOTTING FUNCTIONS
polar(0:0.01:2*pi,cos((0:0.01:2*pi)*2))

bar(1:10,rand(1,10));

[X,Y]=meshgrid(1:10,1:10);
quiver(X,Y,rand(10),rand(10));

stairs(1:10,rand(1,10));

fill([0 1 0.5],[0 0 1],'r');

clear all
close all

%%%
% VECTORIZATION
%%%

% Revisiting find
x=rand(1,100);
inds = find(x>0.4 & x<0.6);

% Avoiding loops --> count values >0 
count=length(find(x>0));

% ART OF AVOIDING LOOPS --> VECTORIZATION --> MORE EFFICIENT :D
