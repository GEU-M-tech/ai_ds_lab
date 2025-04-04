% Write a program in prolog calculate the factorial of a number

% Base case: factorial of 0 is 1
factorial(0, 1).

% Recursive case: factorial(N) = N * factorial(N-1)
factorial(N, F) :- 
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.