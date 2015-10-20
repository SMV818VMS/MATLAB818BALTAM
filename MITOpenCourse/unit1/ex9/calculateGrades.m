% Ex9 Calculate grades
% Perform the transformation of a matrix of grades simulating the
% evaluation of a class

% Load the class
load classGrades;

% Extract the matrix of grades (columns 2 to 8)
grades = namesAndGrades(1:15, 2:8);

% Compute the means
meanGrades = nanmean(grades);

% Normalize
meanMatrix = ones(15,1)*meanGrades;
curvedGrades = 3.5*(grades./meanMatrix);
check = nanmean(curvedGrades);

% Ensure no values above 5
curvedGrades(find(curvedGrades > 5)) = 5;

% Assign letter grades
totalGrade = ceil(nanmean(curvedGrades, 2))';
letters = 'FDCBA';
letterGrades = letters(totalGrade);

% Display the results
disp(letterGrades);