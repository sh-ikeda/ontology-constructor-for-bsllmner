# PO
SPARQL では面倒な部分を awk で処理。  
German, Japanese, Spanish のシノニムはすべて削除。  
各シノニムの後ろに付いている (exact) とかの文字列は削除。  
`owl:Axiom` で書かれているブロックも削除。  
```
awk -f po_edit.awk po.owl > po_edited.owl
```

要るところだけ抽出。  
細胞分類
```
robot query --input po_edited.owl --query po_construct_cell.rq po_cell.owl
```

組織
```
robot query --input po_edited.owl --query po_construct_tissue.rq po_tissue.owl
```