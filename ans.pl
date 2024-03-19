% animal_facts.pl

% Define some facts about animals
mammal(cat).
mammal(dog).
mammal(elephant).
mammal(human).

has_fur(cat).
has_fur(dog).
has_fur(elephant).

has_trunk(elephant).
has_tail(cat).
has_tail(dog).
has_tail(human).

% Define rules for specific characteristics
quadruped(X) :-
    mammal(X),
    has_tail(X).

has_long_nose(X) :-
    mammal(X),
    has_trunk(X).

% Define a rule to check if an animal has fur and is a mammal
furry_mammal(X) :-
    mammal(X),
    has_fur(X).

% Example usage:
% ?- quadruped(cat).
% ?- has_long_nose(elephant).
% ?- furry_mammal(dog).
