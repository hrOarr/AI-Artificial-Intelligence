dfs(Graph, StartNode) :-
    dfs(Graph, StartNode, []).

dfs(Graph, Node, Visited) :-
    \+ member(Node, Visited),
    member(Node-Neighbors, Graph),
    write(Node), nl,
    member(NextNode, Neighbors),
    dfs(Graph, NextNode, [Node|Visited]).


% input dfs([0-[1], 1-[0], 2-[1,3], 3-[2,0], 5-[0]], 0).