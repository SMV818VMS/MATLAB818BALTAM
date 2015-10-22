% loopTest.m
% Make function called loopTest(N) that loops through the values 1
% through N and for each number n it should display ‘n is divisible by 2’, ‘n is divisible by 3’, ‘n is
% divisible by 2 AND 3’ or ‘n is NOT divisible by 2 or 3’. Use a for loop, the function mod or rem to
% figure out if a number is divisible by 2 or 3, and num2str to convert each number to a string for
% displaying. You can use any combination of if, else, and elseif.

function loopTest(N)
    x = (1:1:N);
    for value=x
        if mod(value, 2) == 0 && mod(value, 3) == 0
            disp([num2str(value) ' is divisible by 2 and 3']);
        elseif mod(value, 2) == 0
            disp([num2str(value) ' is divisible by 2']);
        elseif mod(value, 3) == 0 
            disp([num2str(value) ' is divisible by 3']);
        else
            disp([num2str(value) ' is NOT divisible by 2 or 3']);
        end
    end
    
                

