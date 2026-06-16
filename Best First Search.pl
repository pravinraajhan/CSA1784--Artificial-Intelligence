% Graph edges with costs
edge(a, b, 3).
edge(a, c, 6).
edge(a, d, 5).

edge(b, e, 9).
edge(b, f, 8).

edge(c, g, 12).
edge(c, h, 14).

edge(d, i, 7).

edge(i, j, 5).
edge(i, k, 6).

edge(j, l, 1).
edge(j, m, 10).
edge(j, n, 2).

% Goal condition
goal(j).

% Best First Search
best_first(Node) :-
    write(Node), nl,
    goal(Node).

best_first(Node) :-
    edge(Node, Next, _),
    write(Node), write(' -> '),
    best_first(Next).