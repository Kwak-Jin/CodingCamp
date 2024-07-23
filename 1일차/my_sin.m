function sum = my_sin(angle)
% This function returns sin(angle) value using Taylor Series
% -------------------------------------------------------------------------%
% INPUT
% param angle: angle in radian
% OUTPUT
% sin(x) 
    tol = 1e-5;
    new_term = 100000  ;
    k   = 0;
    sum = 0;
    while (abs(new_term) > tol)
        new_term = (-1)^k * angle^(2 * k + 1)/(factorial(2 * k +1));
        sum = sum + new_term;
        k   = k + 1 ;
    end % of while
end % of function