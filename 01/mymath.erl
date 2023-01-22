-module(mymath).
-export([add/2, multi/2, circle/1]).

add(X, Y) ->
  X + Y.

multi(X, Y) ->
  X * Y.

circle(Diameter) ->
  Radius = Diameter / 2,
  Radius * Radius * 3.14.
