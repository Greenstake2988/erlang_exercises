-module(exceptions).
-compile(export_all).


errors(F) ->
  try F() of
    _ -> ok
  
  catch
    error:Error -> {error, caught, Error}
  end.

exits(F) ->
  try F() of
    _ -> ok
  catch
    exit:Exit -> {exit, caught, Exit}
end.

sword(1) -> throw(slice);
sword(2) -> error(cut_arm);
sword(3) -> exit(cut_leg);
sword(4) -> throw(punch);
sword(5) -> exit(cross_bridge).

black_knight(Attack) when is_function(Attack, 0) ->
  try Attack() of
    _ -> "Nonde shall pass."
  catch
    throw:slice -> "Its its but a scratch.";
    error:cut_arm -> "I've had worse.";
    exit:cut_leg -> "Come on you pansy!";
    _:_ -> "Just a flesh wound."
end.

talk() -> "blah blah".

whoa() ->
  try
    talk(),
    _Knight = "None shall pass!",
    _Doubles = [N*2 || N <- lists:seq(1,100)],
    throw(up),
    _WillReturnthis = tequila
  of
    tequila -> "Hey, this worked!"
  catch
    Exception:Reason -> {caught, Exception, Reason}
  end.
