-module(what_the_if).
-compile(export_all).


heh_fine() ->
    if 1 =:= 1 ->
        works
    end,
    if 1 =:= 2; 1 =:= 1 ->
        worksi
    end,if
    if 1 =:= 2, 1 =:= 1 ->
        fails
    end.
oh_god(N) ->
  if N =:= 2 -> might_succed;
     true -> always_does
  end.
help_me(Animal) ->
  Talk = if Animal == cat -> "meow";
            Animal == beef -> "moo";
            Animal == dog -> "bark";
            Animal == tree -> "bark";
            true -> "asdf"
         end,
  {Animal, "says " ++ Talk ++ "!"}.
