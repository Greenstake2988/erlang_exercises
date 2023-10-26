-module(node).
-export([
         empty/0,
         insert/3,
         lookup/2
        ]).

empty() -> {node,nil}.

insert(K,V, {node,nil}) ->
  {node, {K,V, {node,nil}, {node,nil}}};
insert(NewK,NewV, {node, {K,V,S,L}}) when NewK < K ->
  {node, {K,V, insert(NewK, NewV, S), L}};
insert(NewK,NewV, {node, {K,V,S,L}}) when NewK > K ->
  {node, {K,V, S, insert(NewK,NewV,L)}};
insert(K,V, {node, {K,_,S,L}}) ->
  {node, {K,V,S,L}}.

lookup(_, {node, nil}) -> undefined;
lookup(K, {node, {K, V, _, _}}) -> {ok, V};
lookup(K, {node, {NodeK, _, S, _}}) when K < NodeK ->
  lookup(K, S);
lookup(K, {node, {_, _, _, L}}) ->
  lookup(K, L).

