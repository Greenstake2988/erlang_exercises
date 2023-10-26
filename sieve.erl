-module(sieve).
-export([
        sieve/1 
        ]).

sieve(N) when N >= 1 -> lists:reverse(sieve(lists:seq(2,N),[]));
sieve(_) -> [].

sieve([], Acc) -> Acc;
sieve([H|T], Acc) when H > 1 ->
 sieve(lists:filter(fun(X) -> X rem H /= 0 end, T), [H|Acc]).
