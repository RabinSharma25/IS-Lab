/* 
Aim: To perform basic operation on prolog list like: membership check, insertion, deletion, concatenation, length check, list sum.
*/


/* Membership check*/
list_mem(X,[X|_]).
list_mem(X,[_|Tail]):-
list_mem(X,Tail).
