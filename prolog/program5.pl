% Write a program in prolog to implement depth first search.

% Graph representation using edge/2 facts
edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).
edge(d, f).
edge(e, f).

% Rule: dfs(Start, Goal, Path)
dfs(Start, Goal, Path) :-
    dfs_helper(Start, Goal, [Start], Path).

% Helper: dfs_helper(Current, Goal, VisitedSoFar, FinalPath)
dfs_helper(Goal, Goal, Visited, Visited).
dfs_helper(Current, Goal, Visited, Path) :-
    edge(Current, Next),
    \+ member(Next, Visited),
    dfs_helper(Next, Goal, [Next|Visited], Path).

% To get path from Start to Goal, call:
% dfs(Start, Goal, ReversedPath)