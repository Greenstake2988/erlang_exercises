-module(primes).
-export([
        start/0,
        create_enumerate/3,
        create_list/1
        ]).

start() ->
  %io:format("Porfavor introduce un numero!\n"),
  {ok, Numero} = io:read("Por favor introduce un numero!\n"),
  %create_list(Numero),
  Primes = create_enumerate(2, 2, Numero),
  io:format("Los numeros primos son ~p~n", [Primes]).


create_list(Numero) ->
  create_list(2, Numero).

create_list(Value, Numero) ->
  case Value of
      Numero -> [Numero];
      _ -> [Value | create_list(Value + 1, Numero)]
  end.

create_enumerate(Value, Acc, Numero) ->
  NewValue = Value * Acc,
  case NewValue >= Numero of
      true -> [];
      false -> [NewValue | create_enumerate(Value, Acc + 1 , Numero)]
  end.


