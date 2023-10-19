-module(primes).
-export([
        start/0,
        create_enumerate/3,
        create_list/1
        ]).

start() ->
  io:format("Porfavor introduce un numero!\n"),
  {ok, Numero} = io:read("~d"),
  create_list(Numero),
  create_enumerate(2, 2, Numero).

create_list(Numero) ->
  create_list(2, Numero).

ccreate_list(Value, Numero) ->
  case Value of
      Numero -> [Numero];
      _ -> [Value | create_list(Value + 1, Numero)]
  end.reate_list(Value, Numero) ->
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

create_multiple_lists(Numero, List) ->
   
  case lists:member(Numero, List) of
     true ->
         todo;
     false ->
         List
 end. 

