# Learning Erlang

メモ。

## スクリプト実行

`*.erl`を作成する。

中身はこんな感じ。`([main]/0)`の`0`は多分引数の数。

```erlang
-module(main).
-export([main/0]).

main() ->
  io:format("Hello Erlang!!!~n").
```

`erl`コマンドで実行環境を起動する。

`c(ファイル名).`でファイルを読み込む。`c(main).`みたいな感じ。

```erlang
1> c(main).
{ok,main}
```

`モジュール名:関数名()`で実行する。

```erlang
2> main:main().
Hello Erlang!!!
ok
```

`f().`で読み込んでいる関数リセット。

## 引数をとる

```erlang
-module(main1).
-export([main1/1]).

main1(Args) ->
  io:format("args is ~p .", [Args]).
```

```erlang
1> c(main1).
{ok,main1}

2> main1:main(erlang).
args is erlang .
ok
```
