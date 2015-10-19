% ASIGNMENT FOR THE UNIT 1
% Exercises presented in the assn1 file, solved by Samuel Miravet Verde

% Ex1. Scalar Variables
a = 10;
b = 2.5*(10^23);
c = 2 + 3*i;
d = exp((j*2*pi)/3);

% Ex2. Vector Variables
aVec = [3.14 15 9 26];
bVec = [2.71; 8; 28; 182];
cVec = 5:-0.2:-5;
dVec = logspace(1,10, 10000);
eVec = ['H' 'e' 'l' 'l' 'o'];

% Ex3. Matrix variables
aMat = ones(9)*2;
bMat = diag([1 2 3 4 5 4 3 2 1]);
cMat = reshape(1:100, 10, 10);
dMat = nan(3,4);
eMat = [13 -1 5; -22 10 -87];
fMat = floor(-3 + (3-(-3)).*rand(5,3));

% Ex4. Scalar equations
x = 1 / ( 1 + exp(-(a-15)/6));
y = (sqrt(a) + nthroot(b,21))^pi;
z = log(real((c+d)*(c-d)) * sin((a*pi)/3)) / c*conj(c);

% Ex5. Vector equations
xVec = (1/sqrt(2*pi*2.5^2)).*exp(-cVec.^2./(2*2.5^2));
yVec = sqrt((aVec').^2 + bVec.^2);
zVec = log10(1./dVec);

% Ex6. Matrix equations
xMat = (aVec*bVec)* aMat.^2;
yMat = bVec*aVec;
zMat = det(cMat)*(aMat*bMat)';

% Ex7. Common functions and indexing
cSum = sum(cMat);
eMean = mean(eMat')';
eMat(1,:) = [1 1 1];
cSub = cMat(2:9, 2:9);

lin = linspace(1, 20, 20);
for element = lin
    element
    if mod(element, 2) == 0
        lin(find(lin == element)) = -element
    end
end 

r = rand(1, 5);
r(find(r < 0.5)) = 0;

% Ex8. Plotting multiple lines and colors
figure(1)
t = linspace(0, 2*pi, 1000);
plot(t, sin(t), 'r');
hold on;
plot(t, cos(t), '--g');
xlabel('Time(s)');
ylabel('Function values');
title('Sin and Cos functions');
legend('Sin', 'Cos');
xlim([0 2*pi]);
ylim([-1.4 1.4]);
saveas(1,'figures/ex8.png','png');

% Ex9. Optional: Manipulating variables
