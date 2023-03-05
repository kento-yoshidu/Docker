-module(main).
-export([main/0]).

main() ->
  Num = 1,
  io:format("Num is ~p ~n", [Num]),

  % num = 1.

  % Num = 2,
  % io:format("Num is ~p ~n", [Num]).

  f(),
  Num = 2,
  io:format("Num is ~p ~n", [Num]).