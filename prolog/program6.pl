% Write a program in prolog to implement breadth first search

% Graph representation using edge/2 facts
edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).
edge(d, f).
edge(e, f).

% bfs(Start, Goal, Path): finds a path from Start to Goal using BFS
bfs(Start, Goal, Path) :-
    bfs_helper([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

% bfs_helper(QueueOfPaths, Goal, FinalPath)
bfs_helper([[Goal | RestPath] | _], Goal, [Goal | RestPath]).

bfs_helper([[Current | RestPath] | OtherPaths], Goal, Path) :-
    findall([Next, Current | RestPath],
            (edge(Current, Next), \+ member(Next, [Current | RestPath])),
            NewPaths),
    append(OtherPaths, NewPaths, UpdatedQueue),
    bfs_helper(UpdatedQueue, Goal, Path).
