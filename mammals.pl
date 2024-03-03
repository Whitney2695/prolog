/* Facts */
mammal(horse).
mammal(dog).
mammal(cat).
mammal(human).

bird(eagle).
bird(sparrow).
bird(penguin).

fish(shark).
fish(salmon).
fish(goldfish).

/* Rules */
has_feathers(X) :- bird(X).
has_fur(X) :- mammal(X).
lays_eggs(X) :- bird(X).
lays_eggs(X) :- fish(X).

/* Predicates */
can_swim(X) :- fish(X).
can_swim(X) :- mammal(X), X \= human.
can_fly(X) :- bird(X), X \= penguin.
can_fly(X) :- mammal(X), X \= human.

/* Queries */
/*
   ?- can_swim(horse).
   This will check if a horse can swim.
*/


   ?- has_feathers(eagle).
   This will check if an eagle has feathers.
*/

/*
   ?- can_fly(dog).
   This will check if a dog can fly.
*/

/*
   ?- can_fly(sparrow).
   This will check if a sparrow can fly.
*/

/*
   ?- lays_eggs(horse).
   This will check if a horse lays eggs.
*/
