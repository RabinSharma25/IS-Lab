/* Aim: Write a program to solve monkey banana problem*/
/*
move(state(P1,onfloor,M,hasnot),walk(P1,P2),state(P2,onfloor,M,H)).
move(state(P2,onfloor,P2,hasnot),push(P2,P3),state(P3,onfloor,P3,hasnot)).
move(state(P3,onfloor,P3,hasnot),climb,state(P3,onbox,P3,hasnot)).
move(state(P3,onbox,P3,hasnot),grasp,state(P3,onbox,P3,has)).
canget(state(_,_,_,has)).
canget(state1):-
move(state1,_,state2),
canget(state2).
*/

move(state(middle,onbox,middle,hasnot),
grasp,
state(middle,onbox,middle,has)).
move(state(P,onfloor,P,H),
climb,
state(P,onbox,P,H)).
move(state(P1,onfloor,P1,H),
push(P1,P2),
state(P2,onfloor,P2,H)).
move(state(P1,onfloor,B,H),
walk(P1,P2),
state(P2,onfloor,B,H)).
canget(state(,,_,has)).
canget(State1) :-
move(State1,_,State2),
canget(State2). 