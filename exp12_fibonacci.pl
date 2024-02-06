/*Aim: Write a prolog program to find the fibonacci series*/

% Base cases for Fibonacci sequence
fibonacci(0, 0).
fibonacci(1, 1).

% Recursive rule for Fibonacci sequence
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, Result1),
    fibonacci(N2, Result2),
    Result is Result1 + Result2.

% Predicate to print Fibonacci sequence up to N
print_fibonacci(N) :-
    between(0, N, X),
    fibonacci(X, Result),
    write(Result), write(' '),
    fail.