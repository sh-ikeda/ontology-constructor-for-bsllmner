# Cell Ontology
元ファイル:  
- http://purl.obolibrary.org/obo/cl.owl  
- https://github.com/EBISPOT/efo/releases/download/current/efo.owl

※ 以前使っていた cl-base.owl には下記サブセット情報が入っていないので cl.owl を使う。

ヒト・マウス用には、それぞれ専用のサブセットが定義されているので、それを使う。
```
robot query --input cl.owl --query cl_construct_human.rq cl_human.ttl
robot query --input cl.owl --query cl_construct_mouse.rq cl_mouse.ttl
```

加えて、EFO の独自タームを追加。EFO_0000324 (cell type) 以下の、EFO のタームを使う。
```
robot query --input efo.owl --query efo_construct.rq efo_cell.ttl
cat cl_human.ttl efo_cell.ttl > cl_human_with_efo_cell.ttl
cat cl_mouse.ttl efo_cell.ttl > cl_mouse_with_efo_cell.ttl
```
