-module(primes).
-export([
         start/0
        ]).

start() ->
  io:format("Porfavor introduce un numero!\n"),
  {ok, Numero} = io:read("~d"),
  %io:format("Tu numero es ~p", [Numero]).
  create_list(2, Numero).

%create_list(Numero) ->
%  create_list(2, Numero);

create_list(Value, Numero) ->
  case Value of
      Numero -> [Numero];
      _ -> [Value | create_list(Value + 1, Numero)]
  end.

