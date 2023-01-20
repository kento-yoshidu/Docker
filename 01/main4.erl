-module(main4).
-export([main/0]).

main() ->
  %% concat　リスト以外を結合してリストにする
  io:format("~p ~n", [lists:concat([doc, '/', file, '.', 3])]),

  %% delete　切り出し
  io:format("~p ~n", [lists:delete(3, [5, 3 ,2, 9])]),

  %% sublist 1からn番目を返す
  io:format("~p ~n", [lists:sublist([5, 3, 7, 1, 9], 3)]),
  %% もしくは mからn番目を返す
  io:format("~p ~n", [lists:sublist([5, 9, 0, 1, 5, 3], 2, 4)]),

  %% nthtail n+1番目以降を返す
  io:format("~p ~n", [lists:nthtail(3, [5, 2, 1, 0, 5, 3])]),

  %% split n番目を境に2つに分ける
  io:format("~p ~n", [lists:split(3, [1, 2, 3, 4, 5, 6])]),

  %% 文字列は「文字のリスト」であり、「整数型のリスト」であると言える

  io:format("~p ~p ~p ~p ~p ~n", [$H, $e, $l, $l, $o]),
  %=> 72 101 108 108 111

  io:format("~p, ~n", [[72, 101, 108, 108, 111]]),
  %=> Hello

  %% stringモジュール

  io:format("~p ~n", [string:len("Hello")]),
  %=> 5

  io:format("~p ~n", [string:equal("Hello", "Hello")]),
  %=> true

  io:format("~p ~n", [string:equal("Hello", [72, 101, 108, 108, 111])]),
  %=> true

  io:format("~p ~n", [string:concat("Hello ", "World")]),

  io:format("~p, ~p ~n", [string:chr("Hello", $H), string:chr("Hello", $o)]),
  %=> 1, 5

  %% rchrは後ろから検索
  io:format("~p ~n", [string:rchr("Hello", $o)]),
  %=> 5

  io:format("~p, ~p ~n", [string:to_lower("HELLO"), string:to_lower("hello")]),
  %=> "hello", "hello"

  io:format("~p ~n", [string:to_lower($H)]).
  %=> 104

