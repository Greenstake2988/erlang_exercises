-module(primes2).
-export([sieve/1]).

sieve(N) when N < 2 ->
    [];
sieve(N) ->
    sieve(lists:seq(2, N), []).

sieve([], Primes) ->
    lists:reverse(Primes);
sieve([P | Rest], Primes) ->
    sieve(mark_multiples(P, Rest, []), [P | Primes]).

mark_multiples(_, [], Acc) ->
    lists:reverse(Acc);
mark_multiples(P, [Num | Rest], Acc) when Num rem P =:= 0 ->
    mark_multiples(P, Rest, Acc);
mark_multiples(P, [Num | Rest], Acc) ->
    mark_multiples(P, Rest, [Num | Acc]).


