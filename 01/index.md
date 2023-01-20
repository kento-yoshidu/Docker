## 参考

[Erlang World](http://erlangworld.web.fc2.com/)

[Erlang の string モジュールの古い非推奨の関数から代わりの関数へ移行する - 後編 - 無題の備忘録](https://stacktrace.hatenablog.jp/entry/2019/10/15/200000)

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
