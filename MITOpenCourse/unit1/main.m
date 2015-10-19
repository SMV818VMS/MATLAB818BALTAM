% variables.m
% Playing with different variables

% 64-bit double
var1 = 3.14;

% 16-bit charcater --> string
myString = 'Hello World';

%%%
% SCALARS
%%%

% Explicitly given value
a = 10 % As it has no a ';' at the end --> showed in workspace

% Or as function
c = 1.3*45 - 2*a

% To suppress output, end the line with a semicolon
cooldude = 13/3;

%%%
% ARRAYS
%%%

% ROW VECTORS --> comma or space separated
row = [1 2 5.4 -6.6]
row = [1, 2, 5.4, -6.6];

% COLUMN VECTOR --> semicolon separated
column = [4; 2; 4; 7]

% Size and length functions
size(row)
size(column)

length(row)
length(column)

% MATRICES
% Element by element
a = [1 2; 3 4]

% Concatenating Vectors
a = [1 2];
b = [3 4];
c = [5;6];

d = [a;b];
e = [d c];
f = [[e e];[a b a]];

str = ['Hello, I am ' 'John'];

% SAVE/ CLEAR / LOAD VARIABLES

% Save your variables in a file
save myVariablesFile a b c d e f str

% Clear them from the workspace
clear a b; % Selected variables
% clear all; % All the variables

% Load them again to the environment
load myVariablesFile

% You can do the same with all the environment
save myenv; clear all; load myenv;

%%%
% EXERCISE: VARIABLES
%%%
% Get and save the current date and time

% Create a variable start using the function clock
start = clock;

size(start); length(start)

% start includes a 6 elements vector containing [year month day hour minute seconds]
startString = datestr(start)

% Save 'start' and 'startString' in a variable file
save startTime start startString

% NEW SCRIPT helloWorld_withTime.m to show how to use it

%%%
% MANIPULATING VARIABLES
%%%

% Arithmetic operations (+ - * /)
7/45
(1 + i)*(2 + i)
1/0
0/0

% Exponentiation(^)
4^2
(3 + 4*j)^2

% If complicated --> use parentheses
((2 + 3)*3)^0.1

% Multiplication is NOT implicit given parentheses
% 3(1+0.7) gives an ERROR

% To clear the command window
clc

% Built-in functions
sqrt(2)
log(2), log10(0.23)
cos(1.2), atan(-.8)
exp(2+4*i)
round(1.4), floor(3.3), ceil(4.23)
angle(i); abs(1+i);

%%%
% EXERCISE : SCALARS
%%%
% We are learning MATLAB at exponential rate

% tau = seconds in 1.5 days:
% 1st we define a function days2seconds:

days2seconds = @(days) days*24*60*60;

% and apply it:
days = 1.5;
tau = days2seconds(days);

% If the course lasts 5 days, compute the numbers of seconds in 5 days:
endOfClass = days2seconds(5);

% Define a minifunctuon to describe the knowledge gained
k = @(time_total, time_taught) 1-exp(-time_total/time_taught);

% Apply it
knowledgeAtEnd = k(endOfClass, tau);

% Print it:
disp(['At the end of 6.094, I will know ' ...
num2str(knowledgeAtEnd*100) '% of MATLAB'])

%%%
% TRANSPOSE
%%%
% Transpose --> built-in function to transform a column into a row and vice
% versa

a = [ 1 2 3 4+i]
transpose(a)
a' % The ' gives the Hermitian transpose (conjugate complex numbers)
a.'

%%%
% ADDITION AND SUBSTRACTION OF VECTORS
%%%

% c = row + column --> will return an error as the sizes must match
c = row' + column
c = row + column'

% Can sum or multiply the elements
s = sum(row);
p = prod(row);

%%%
% ELEMENT-WISE FUNCTIONS
%%%
% You can apply computations toall the same elements of a vector at the
% same time... 

t = [1 2 3]
f = exp(t) % The same than
f = [exp(1) exp(2) exp(3)]

% there are elements like * / ^ that can have the two modes of
% operation (standard and element-wise) --> To do element-wise operation
% use the dot:

a = [1 2 3]; b = [4; 2; 1];
% a.*b, a./b, a.^b % all errors
a.*b', a./b', a.^(b')

%%%
% EXERCISE : VECTOR OPERATIONS
%%%
% Calculate how many seconds elapsed since the start of class

secPerMin=60;
secPerHour=60*secPerMin;
secPerDay=24*secPerHour;
secPerMonth=30.5*secPerDay;
secPerYear=12*secPerMonth;
secondConversion=[secPerYear secPerMonth ...
secPerDay secPerHour secPerMin 1];

currentTime=clock;
elapsedTime=currentTime-start;
t=secondConversion*elapsedTime';

% And display the current knowledge
currentKnowledge=1-exp(-tau/t);
disp(['At this time, I know ' ...
num2str(currentKnowledge*100) '% of MATLAB']);

%%%
% AUTOMATIC INITIALIZATION
%%%
% basics --> thingtoadd(M,N) -> M = number of rows, N = number of columns
o = ones(1,10)
z = zeros(23,1)
r = rand(1,45)
n = nan(1,69)

% To initialize a linear vector use linspace
a = linspace(0,10,5) % row with five values from 0 to 10 (same distance between numbers)
% The same with colon operator
b = 0:2:10 %starts at 0, increments by 2, and ends at or before 10
c = 1:5 % if increment isn’t specified, default is 1

%%%
% EXERCISE : VECTOR FUNCTIONS
%%%
% Calculate your leaning trajectory

tVec = linspace(0,endOfClass,10000);
knowledgeVec=1-exp(-tVec/tau);

%%%
% VECTOR INDEXING
%%%
% it starts with 1!
a(1); % Returns first element

% The index argument can be a vector
x = [12 13 5 8];
a = x(2:3); % a = [13 5];
b = x(1:end-1); % b = [12 13 5];

%%%
% MATRIX INDEXING
%%%
% Matrices can be indexed in two ways : subscripts or linear indices
A = rand(5) % shortcut for 5x5 matrix
A(1,1)
A(1)

A(1,2) % The same than: 
A(6)

A(1:3, 1:2) % Specificy contiguous submatrix
A([1 5 3], [1 4]) % Specify rows and columns

%%%
% ADVANCED INDEXING
%%%

% To select rows and columns of a matrix use:
c = [12 5 ; -2 13]
d = c(1,:); % d = [12 5]
e = c(:,2); % e = [5; 13]
c(2,:) = [3 6]; % replaces second row of c

% functions to find desired values in a vector = max and min
vec = [5 3 1 9 7]
[minVal, minInd] = min(vec);
[maxVal, maxInd] = max(vec);

% To find the index of a specific value
ind = find(vec == 9);
ind = find(vec > 2 & vec <6);

%%%
% EXERCISE : INDEXING
%%%
% When will you know 50% of MATLAB
[val,ind]=min(abs(knowledgeVec-0.5));
halfTime=tVec(ind);
disp(['I will know half of MATLAB after ' ...
num2str(halfTime/secPerDay) ' days']);

%%%
% BASIC PLOTTING
%%%

x = linspace(0, 4*pi, 10);
y = sin(x);

plot(y);

figure(1)
plot(x,y)
saveas(1,'figures/basicplot_10.png','png')

% To make a smoother plot
figure(1)
x = linspace(0, 4*pi, 1000);
plot(x,sin(x));
saveas(1,'figures/basicplot_1000.png','png')

% plot([1 2], [1 2 3]); % ERROR

%%%
% EXERCISE : PLOTTING
%%%

figure(2)
plot(tVec/secPerDay, knowledgeVec);
saveas(2,'figures/exercise.png','png')

