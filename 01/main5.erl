-module(main5).
-export([main/0]).

-record(item, {
  id = 999,
  name = item_name,
  value
}).

-record(user, {
  id,
  name,
  class
}).

-import(mymath, [add/2, multi/2, circle/1, area/2, bigger/2, bigger2/2, animal/1]).

main() ->
  %% レコード　構造体みたいなやつ
  Apple = #item{id = 1, name = apple, value = 200},
  io:format("~p ~n", [Apple]),

  Banana = #item{name = banana, value = 300},
  io:format("~p ~n", [Banana]),

  Kento = #user{id = 1, name = kento, class = development},

  % is_recordで判定
  io:format("~p ~n", [is_record(Apple, item)]),
  %=> true
  io:format("~p ~n", [is_record(Kento, user)]),
  %=> true
  io:format("~p ~n", [is_record(Apple, user)]),
  %=> false

  io:format("~p ~n", [add(3, 10)]),
  io:format("~p ~n", [multi(8, 4)]),
  io:format("~p ~n", [circle(10)]),

  io:format("~p ~n", [area(circle, 5)]),
  io:format("~p ~n", [area(square, 5)]),
  io:format("~p ~n", [area("foo", 5)]),

  io:format("~p ~n", [bigger(10, 1)]),
  io:format("~p ~n", [bigger(3, 11)]),
  io:format("~p ~n", [bigger(11, 11)]),

  io:format("~p ~n", [bigger2(foo, bar)]),

  io:format("~p ~n", [animal(dog)]),
  io:format("~p ~n", [animal(banana)]).
