-module(main2).
-export([main/0]).

main() ->
  %% 数は整数と浮動小数点数がある
  io:format("~p, ~p ~n", [1, 1.0]),

  %% 四則演算、余りはremで求める
  Num1 = 1 + 10,
  Num2 = 10 / 3,
  Num3 = 10 rem 4,

  io:format("~p, ~p, ~p ~n", [Num1, Num2, Num3]),

  %% is_number, is_integer, is_floatなど
  io:format("~p ~n", [is_number(1)]),
  io:format("~p ~n", [is_integer(1)]),
  io:format("~p ~n", [is_float(1.0)]),

  %% アトム = 不変定数。小文字から始まる
  apple,
  io:format("~p ~n", [apple]),

  Atom1 = apple1,
  io:format("~p ~n", [Atom1]),

  %% is_atom
  %% trueやfalseもアトム
  io:format("~p, ~p, ~p, ~p ~n", [is_atom(apple), is_atom(Atom1), is_atom(true), is_atom(false)]),
  %% シングルクオートで囲えば大文字から始まっていてもアトムになる

  %% タプル {}で囲う
  io:format("~p ~n", [{1, true, "String"}]),
  io:format("~p ~n", [{users, {1, "Kento"}, {2, "Miyuki"}}]),

  %% タプルはパターンマッチで取り出す（分割代入みたいな感じ？）
  {Id, Name} = {1, "Kento"},
  io:format("id is ~p, name is ~p ~n", [Id, Name]),

  %% is_tuple
  io:format("~p ~n", [is_tuple({1, kento})]).

