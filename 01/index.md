[Erlang World](http://erlangworld.web.fc2.com/)

# シェルの起動

`erl`とタイプするか、`werl.exe`と入力することで起動する。

`halt().`か`q().`で終了する。

## 変数

変数は大文字で始める。型は値を束縛した時に自動的に決定される。

```erl
1> Num = 1.
1
```

単一代入変数であり、代入できるのは1度だけ。

```
1> Num = 1.
1
2> Num = 2.
** exception error: no match of right hand side value 2
```

> この関数はモジュールの中に入っています。

`モジュール名:関数名`という風に呼び出す。
