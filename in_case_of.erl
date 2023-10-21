-module(in_case_of).
-compile(export_all).

% Esta funcion esta de mas
%insert(X,[]) ->
%  [X];
insert(X,Set) ->
  case lists:member(X,Set) of
      true ->
          Set;
      _ ->
          [X|Set]
  end.

% @spec playa(tuple()) -> atom().
playa(Temperatura) ->
  case Temperatura of
    {celsius, N} when N >= 20, N =< 45 ->
          'favorable';
    {kelvin, N} when N >= 293, N =< 318 ->
          'cientificamente favorable';
    {farenheit, N} when N >= 68, N =< 113 ->
          'favorable en USA';
    _ ->
          'evita la playa'
  end.
