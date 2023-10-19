-module(useless). 
-export([
        add/2,
        hello/0,
        saludo/2 
        ]).
-author("An Erlang Champ").
add(A,B) ->
  A + B.
% Shows Greetings.
%
% io:format/1 is the standard function used to output text. 
hello() ->
  io:format("Hello World!~n").

saludo(hombre, Nombre) ->
  io:format("Hola, Sr. ~s", [Nombre]);
saludo(mujer, Nombre) ->
  io:format("Hola, Sra. ~s", [Nombre]);
saludo(_, Nombre) ->
  io:format("Hola, ~s", [Nombre]).
