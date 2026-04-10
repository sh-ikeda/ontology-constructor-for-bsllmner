# MONDO
元ファイル: https://purl.obolibrary.org/obo/mondo.owl

ヒト以外の疾患も入っているため、ヒト用には MONDO:0700096 (human disease) 以下のサブツリーを使う。  
マウスの場合も、ヒト疾患のモデルとして使われる場合がほとんどで、マウス専用のタームが充実しているわけではないので、これで問題ないと思われる。
```
robot query --input mondo.owl --query mondo_construct_human.rq mondo_human.ttl
```
