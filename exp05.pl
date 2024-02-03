/*
Aim: Prolog program to find greatest among three numbers
*/

max(A,B,C):-
A>=B,A>=C,
write("The greatest number is "),
write(A).
max(A,B,C):-
B>=A,B>=C,
write("The greatest number is "),
write(B).
max(A,B,C):-
C>=A,C>=B,
write("The greatest number is "),
write(C).

/*
Queries:
max(1,2,4).
*/