# UBERON
元ファイル: http://purl.obolibrary.org/obo/uberon.owl

※ 以前使っていた uberon-base.owl には下記サブセット情報が入っていないので uberon.owl を使う。

ヒト・マウス用には、それぞれ専用のサブセットが定義されているので、それを使う。
```
robot query --input uberon.owl --query uberon_construct_human.rq uberon_human.ttl
robot query --input uberon.owl --query uberon_construct_mouse.rq uberon_mouse.ttl
```
