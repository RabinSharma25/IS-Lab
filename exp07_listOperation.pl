/* 
Aim: To perform basic operation on prolog list like: membership check, insertion, deletion, concatenation, length calculation, list sum.
*/


/* Membership check*/
list_mem(X,[X|_]).
list_mem(X,[_|Tail]):-
list_mem(X,Tail).


/* Insertion and Deletion */

list_insert(X,L,R):-
list_delete(X,R,L).
list_delete(X,[X|List1],List1).
list_delete(X,[Y|List],[Y|List1]):-
list_delete(X,List,List1).


/* Length Calculation */
list_length([],0).
list_length([_|A],B):-
list_length(A,C),
B is C+1.

/* Sum of list calculation */

list_sum([],0).             % Base condition for recursion 
list_sum([Head|Tail],Sum):- 
list_sum(Tail,SumTail),     % Calculating the sum of Tail part
Sum is Head+SumTail.        % Adding the head to the sum of tail part

/* Contatenation of two list */

list_concat([],L,L).               % if we concatenate empty list to L the result 
                                   % is L, this is base condition

list_concat([H1|L1],L2, [H1|L3]):- % In case first list gets concatenated with 
                                   % L2 then the new list will have the same  
                                   % head as the first list and tail will be a
                                   % new list from from the concatenation of two % list
list_concat(L1,L2,L3).



/*
Queries:
list_mem(a,[a,r,t,y]).
list_mem(a,[r,t,y,a]).
list_delete(a,[a,b,c,d],L).
list_insert(a,[a,b,c,d],L).
list_concat([2,3,4],[3,4,4],L).
list_sum([1,2,3,4],Sum).
list_length([a,b,c,d,e,f],N).
*/
