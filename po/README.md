# PO
元ファイル: https://purl.obolibrary.org/obo/po.owl

SPARQL では面倒な部分を awk で処理。  
- German, Japanese, Spanish のシノニムはすべて削除。  
- 各シノニムの後ろに付いている (exact) とかの文字列は削除。  
- `owl:Axiom` で書かれているブロックも削除。  
```
awk -f po_edit.awk po.owl > po_mod.owl
```

要るところだけ抽出。  
細胞分類は、PO:0009002 (plant cell) 以下のサブツリー。
```
robot query --input po_mod.owl --query po_construct_cell.rq po_cell.ttl
```

組織は PO:0009011 (plant structure) 以下のサブツリーで、かつ PO:0009002 (plant cell) 以下を除いたもの。
```
robot query --input po_mod.owl --query po_construct_tissue.rq po_tissue.ttl
```