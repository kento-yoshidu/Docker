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

  %% アトム = 不変定数、リテラルのようなもの。小文字から始まる。
  apple,
  io:format("~p ~n", [apple]),

  Atom1 = apple1,
  io:format("~p ~n", [Atom1]),

  % 英数字以外から始めることもできるが、シングルクオートで囲う
  io:format("is this atom? ~p ~n", [is_atom('Hello World!')]),
  %=> is this atom? true

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % atomはatom_tableにて管理され、ガベージコレクションの対象にならない。
  % 1atomで8バイトのメモリーが消費される。

  %% is_atom
  %% trueやfalseもアトム
  io:format("~p, ~p, ~p, ~p ~n", [is_atom(apple), is_atom(Atom1), is_atom(true), is_atom(false)]),
  %% シングルクオートで囲えば大文字から始まっていてもアトムになる

  %% タプル。{}で囲う
  io:format("~p ~n", [{1, true, "String"}]),
  io:format("~p ~n", [{users, {1, "Kento"}, {2, "Miyuki"}}]),

  %% タプルはパターンマッチで取り出す（分割代入みたいな感じ？）
  {Id, Name} = {1, "Kento"},
  io:format("id is ~p, name is ~p ~n", [Id, Name]),

  %% is_tuple
  io:format("~p ~n", [is_tuple({1, kento})]),

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % ブール代数
  io:format("~p, ~p, ~p ~n", [[true and true], [true or false], [true xor false]]),
  %=> [true], [true], [true]
  io:format("~p, ~p, ~p ~n", [[true and false], [false or false], [true xor true]]),
  %=> [false], [false], [false]
  io:format("~p ~n", [true and (false xor not (true xor true))]),
  %=> true

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % 比較演算子
  % =:=や=/=を使えば暗黙の型変換なしに比較できる
  io:format("~p, ~p ~n", [[5 == 5.0], [5 =:= 5.0]]),
  %=> [true], [false]
  io:format("~p, ~p ~n", [[5 /= 5.0], [5 =/= 5.0]]).
  %=> [false], [true]
