#!/usr/bin/pl -q -t euler -f

solve(Start, End, Total) :-
  write('Entering solve')
	(Start mod 3 =:= 0; Start mod 5 =:= 0),
	Start < End,
	Next is Start + 1,
	solve(Next, End, SemiTotal),
	Total is SemiTotal + Start.
solve(Start, End, Total) :-
	Start < End,
	Next is Start + 1,
	solve(Next, End, Total).
solve(N, N, N).

euler :-
	solve(1, 999, MyAnswer),
	format('~w~n', [MyAnswer]).