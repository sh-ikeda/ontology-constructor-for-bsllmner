# Cell Ontology
元ファイル: http://purl.obolibrary.org/obo/cl.owl

※ 以前使っていた cl-base.owl には下記サブセット情報が入っていないので cl.owl を使う。

ヒト・マウス用には、それぞれ専用のサブセットが定義されているので、それを使う。
```
robot query --input cl.owl --query cl_construct_human.rq cl_human.ttl
robot query --input cl.owl --query cl_construct_mouse.rq cl_mouse.ttl
```
