/*Aim: Prolog program to check for palindrome*/

palindrome(List):-list_reverse(List,List).
list_reverse([],[]).
list_reverse([Head|Tail],Reversed):-
    list_reverse(Tail,ReversedTail),
    concatenation(ReversedTail,[Head],Reversed).

concatenation([],L,L).
concatenation([H|L1],L2,[H|L3]):-
concatenation(L1,L2,L3).