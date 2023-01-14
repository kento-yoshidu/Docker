-module(main1).
-export([main/1]).

main(Args) ->
  io:format("args is ~p .~n", [Args]).
