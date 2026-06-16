% Initial state
initial_state(
    state(at_door, on_floor, at_window, has_not_eaten)
).

% Final state
final_state(
    state(_, _, _, has_eaten)
).

% Actions
action(
    state(at_window, on_floor, at_window, has_not_eaten),
    grasp,
    state(at_window, on_floor, at_window, has_eaten)
).

action(
    state(at_door, on_floor, _, HB),
    walk_to_window,
    state(at_window, on_floor, at_window, HB)
).

% Solve rule
solve(Action) :-
    initial_state(S0),
    action(S0, Action, S1),
    final_state(S1).