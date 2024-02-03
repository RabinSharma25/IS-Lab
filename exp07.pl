/* 
Aim: To perform basic operation on prolog list like: membership check, insertion, deletion, concatenation, length calculation, list sum.
*/


/* Membership check*/
list_mem(X,[X|_]).
list_mem(X,[_|Tail]):-
list_mem(X,Tail).


/* Insertion */

/* Deletion */


/* Length Calculation */


/*
Queries:
list_mem(a,[a,r,t,y]).
list_mem(a,[r,t,y,a]).
*/