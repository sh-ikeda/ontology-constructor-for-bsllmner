# Cellosaurus
元ファイル: https://ftp.expasy.org/databases/cellosaurus/cellosaurus.obo  
- obo を awk で処理。
  - もとからある `comment`, `xref`, `relationship`, `creation_date` は削除
  - ただし TaxID への `xref` は維持
  - `comment` は有用なものもあるかもしれないが、量が多いのと、パースが困難なため、削除
  - 疾患オントロジー (NCIt, ORDO) への `xref` は、疾患名を取り出し、`comment` として持つ
  - `relationship: derived_from` (派生元の細胞株) も、`comment` として持つ
```
awk '/^xref: NCBI_TaxID:/{print} !/^(comment|xref|relationship|creation_date):/{print} /^xref: (NCIt:C[0-9]+|ORDO:Orphanet_[0-9]+) !/{disease=gensub(/.*! /,"","g",$0); print "comment: \"Disease: " disease "\""} /^relationship: derived_from CVCL_[A-Z0-9]{4} !/{parent=gensub(/.*! /,"","g",$0); print "comment: \"derived_from: " parent "\""}' cellosaurus.obo > cellosaurus.mod.obo
robot convert -i cellosaurus.mod.obo -o cellosaurus.mod.owl
```