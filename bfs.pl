root(1).
graph(1,2).
graph(1,3).
graph(2,4).
graph(2,5).
graph(2,6).
graph(4,9).
graph(4,10).
graph(6,11).
graph(3,7).
graph(3,8).
graph(7,12).
graph(8,13).

destination(4).

bfs:-
	write('Welcome to Breadth First Search. '),nl,
	write('Start node = 1'),nl,
	root(Root),
	bfs([Root],1,4,[Root]).
bfs([A|_],_,_,_):-
	write('Check if '),write(A), write(' is a destination.'),nl,
	destination(A),
	write('Found!!. End of path'),nl.
bfs([_|T],N,L,List):-
	write('If Not - then going to next node'),nl,
	bfs(T,N,L,List).
bfs([],N,L,List):- write('If current level is empty, then go to go next level'),nl,
	findall(Node,(member(Item,List),graph(Item,Node)),NewList),
	N1 is N + 1,  
	nl,write('*Going to Level '),write(N1),nl,
	bfs(NewList,N1,L,NewList).
