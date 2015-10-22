% findNearest.m 
% Function to return the index of the value that is nearest to a desired
% value

function [index value] = findNearest(x, desiredVal)
    % Evaluate if matrix
    [m ,n] = size(x);
    if m == 1 || n == 1
        disp('Vector given');
    else
        disp('Matrix given, transforming it');
        x = x(:);
    end
    
    % Use min and abs to find the closest value
    [index index] = min(abs(x-desiredVal));
    value = x(index);
    % Display results
    disp(['The closest value to ' num2str(desiredVal) ...
          ' in your variable is ' num2str(value) ...
          ' located in the index ' num2str(index)]);