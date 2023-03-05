-module(main).
-export([main/0]).

main() ->
  Num = 1,
  io:format("Num is ~p ~n", [Num]),

  % 小文字から始めることはできない
  % num = 1.

  % 束縛された値は書き換えることができない
  % Num = 2,
  % io:format("Num is ~p ~n", [Num]).

  % 右辺と左辺が等しいのでパターンマッチの結果はok
  io:format("~p ~n", [Num = 1]),
  %=> 1

  Num = 1,
  Num = 1,
  io:format("Num is ~p ~n", [Num]).
