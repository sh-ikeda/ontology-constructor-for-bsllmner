# ChEBI
comment として role 情報を追加
```
robot query --input chebi.owl --update chebi_update.rq  --output chebi_role.owl
```

要るところだけ抽出
```
robot query --input chebi_role.owl --query chebi_construct.rq chebi_edited.ttl
```

robot query だと xml で出力することができないので、一度 ttl で出したものを owl に変換する。
```
robot convert --input chebi_edited.ttl --format owl --output chebi_edited.owl
```