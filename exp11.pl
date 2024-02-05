/*Aim: Write a prolog program to find whether a particular year is leap year or not. */

leap_year(N):-
N mod 4 =:= 0,
N mod 100 =:= 0,
N mod 400 =:= 0,
write("It is a leap year").

leap_year(N):-
N mod 4 =:= 0,
N mod 100 =\= 0,
write("It is a leap year").

leap_year(N):-
N mod 4 =\= 0,
write("It is not a leap year").