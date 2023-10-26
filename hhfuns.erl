-module(hhfuns).
-export([
         increment/1,
         decrement/1,
         map/2,
         incr/1,
         decr/1,
         old_men/2,
         filter/2,
         max/1,
         fold/3
        ]).
increment([]) -> [];
increment([H|T]) -> [H+1|increment(T)].

decrement([]) -> [];
decrement([H|T]) -> [H-1|decrement(T)].

map(_, []) -> [];
map(F, [H|T]) -> [F(H)|map(F,T)].

incr(X) -> X + 1.
decr(X) -> X - 1.

old_men([], Acc) -> Acc;
old_men([{male, 60 }= Person| People], Acc) -> old_men(People, [Person|Acc]);
old_men([_|People], Acc) -> old_men(People, Acc).

filter(Pred, L) -> lists:reverse(filter(Pred, L, [])).

filter(_, [], Acc) -> Acc;
filter(Pred, [H|T], Acc) ->
  case Pred(H) of
      true ->
          filter(Pred, T, [H|Acc]);
      false ->
          filter(Pred, T, Acc)
  end.

max([H|T]) -> max2(T, H).

max2([], Max) -> Max;
max2([H|T], Max) when H > Max -> max2(T, H);
max2([_|T], Max) -> max2(T, Max).

fold(_, Start, []) -> Start;
fold(F, Start, [H|T]) -> fold(F, F(H, Start), T).
