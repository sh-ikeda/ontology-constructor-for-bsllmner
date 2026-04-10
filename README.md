# 共通
`robot query` は直接 owl を出力することが(おそらく)できない。  
各オントロジーの変換手順では、`robot query` で ttl を出力するところまでしか書いていないことがあるが、適宜 `robot convert` で owl に変換してから使用する。
```
robot convert --input input.ttl --format owl --output output.owl
```