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
  io:format("~p ~n", [lists:split(3, [1, 2, 3, 4, 5, 6])]).
