/*
Aim: Write a program for factorial in prolog
*/

factorial(0,1).
factorial(1,1).
factorial(N,F):-
N>0,
N1 is N-1,
factorial(N1,F1),
F is N*F1.


/*
Queries:
factorial(3,6). # factorial of 3 is 6, it will return a boolean.
*/