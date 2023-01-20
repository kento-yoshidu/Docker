-module(main3).
-export([main/0]).

main() ->
  %% Termに型の決まりはない
  io:format("~p ~n", [[1, 2, 3, 4, "5"]]),

  %% リストの先頭を「ヘッド」と呼び、それ以外を「テール」と呼ぶ。[H | T]みたいに扱うことができる。
  [H | T] = [1, 2, 3, 4, 5],
  io:format("~p, ~p ~n", [H, T]),

  %% 連結。
  List = [H | T],
  io:format("~p ~n", [List]),

  %% is_list
  io:format("~p ~n", [is_list([1, 2, 3, 4, 5])]),

  %% listsモジュール。
  %% lists:reverse
  io:format("~p ~n", [lists:reverse([1, 2, 3, 4, 5])]),

  %% 最初のリストを反転、残りをそれに連結
  io:format("~p ~n", [lists:reverse([1, 2, 3], [a, b, c])]),

  %% 長さ
  io:format("~p ~n", [length([1, 2, 3, 4, 5])]),

  %% hdでヘッド、tlでテール、lists:lastで末尾が得られる
  io:format("~p, ~p, ~p ~n", [hd([1, 2, 3]), tl([1, 2, 3]), lists:last([1, 2, 3])]),

  %% nth(N, List)で任意のターム。1から始まる
  io:format("~p ~n", [lists:nth(1, [1, 2, 3])]),
  %=> 1

  %% member(Elm, List)　Elmが含まれているか
  io:format("~p ~p ~n", [lists:member(3, [1, 2, 3]), lists:member(5, [1, 2, 3])]),

  %% [|]は後ろにリストをとって結合させる
  io:format("~p ~n", [[[1, 2, 3] | [4, 5, 6]]]),
  %=> [[1, 2, 3],4, 5, 6]
  io:format("~p ~n", [[1 | [4, 5, 6]]]),
  %=> [1, 4, 5, 6]
  io:format("~p ~n", [[[1] | [2]]]),

  io:format("====================== ~n"),

  %% ++はリスト同士の結合
  io:format("~p ~n", [[1, 2, 3] ++ [4, 5, 6]]),
  %=> [[1, 2, 3],4, 5, 6]
  io:format("~p ~n", [[1] ++ [4, 5, 6]]).
  %=> [1, 4, 5, 6]
