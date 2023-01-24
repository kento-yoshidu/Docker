-module(mymath).
-export([add/2, multi/2, circle/1, area/2, bigger/2, bigger2/2, animal/1]).

add(X, Y) ->
  X + Y.

multi(X, Y) ->
  X * Y.

circle(Diameter) ->
  Radius = Diameter / 2,
  Radius * Radius * 3.14.

area(circle, X) ->
  X * X * 3.14;
area(square, X) ->
  X * X;
area(Other, X) ->
  io:format("~p is not supported.", [Other]),
  X.

bigger(X, Y) when X > Y ->
  X;
bigger(X, Y) when X < Y ->
  Y;
bigger(X, _Y) ->
  io:format("equal ~n"),
  X.

%%論理積　,で区切る
bigger2(X, Y) when is_integer(X), is_integer(Y), X > Y ->
  X;
bigger2(X, Y) when is_integer(X), is_integer(Y) ->
  Y;
bigger2(_, _) ->
  io:format("Not integer ~n").

%%論理和　;で区切る

animal(X) when dog =:= X ; cat =:= X ->
  io:format("Dog or Cat ~n");
animal(_) ->
  io:format("Other ~n").
