/*Prolog Program to create family tree*/

parent(sandeep,pragesh).
parent(depshika,pragesh).
parent(pragesh,deepan).
parent(depshika,nayan).
parent(nayan,puran).
parent(nayan,silvana).


/*
Queries:
1. Check whether the given clauses are ture of flase
    a) parent(sandeep, pragesh). .. Read as sandeep is the parent of pragesh
2. Who is parent of whom?
    a) parent(A,pragesh).
3. Find all the parent and child pairs.
    a) parent(X,Y).
4. Find a grandparent of any node.
    a) parent(A,deepan), parent(X,A).
5. Find all grandparent relation from the family tree.
    a) parent(X,Y),parent(A,X).
*/