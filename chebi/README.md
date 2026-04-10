# ChEBI
元ファイル: https://ftp.ebi.ac.uk/pub/databases/chebi/ontology/chebi.owl
comment として role 情報を追加
```
robot query --input chebi.owl --update chebi_update.rq  --output chebi_role.owl
```

要るところだけ抽出。CHEBI:24431 (chemical entity) 以下のサブツリー。
```
robot query --input chebi_role.owl --query chebi_construct.rq chebi_mod.ttl
```
