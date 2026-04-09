/\([^)）]+\)<\/oboInOwl:has.*Synonym>/ {
    if (/\((exact|broad), (German|Japanese|Spanish)\)/||/\((German|Japanese|Spanish), (exact|related|broad)\)/) {
        next
    } else {
        print gensub(/ (\([^)）]+\))(<\/oboInOwl:has.*Synonym>)/,"\\2","g",$0)
        next
    }
}
/^    <owl:Axiom>$/ {
    in_axiom_block = 1
}
/^    <\/owl:Axiom>$/ {
    in_axiom_block = 0
    next
}
!in_axiom_block