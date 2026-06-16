% Pattern matching using unification
match(X, X).

% List head-tail pattern
first([H|_], H).

rest([_|T], T).

% Check membership via pattern matching
member(X, [X|_]).

member(X, [_|T]) :-
    member(X, T).