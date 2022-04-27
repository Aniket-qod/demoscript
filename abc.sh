printf '\n\n\n\n\n\n\n\n\e[8A\e7'&&for i in {0..9999..99} 10000;do 
    o=1 i=0$i;printf -v p %0.2f ${i::-2}.${i: -2}
    for l in 1 2 3 5 8 13 20 40 $((COLUMNS-7));do
        percentBar $p $l bar$((o++));done
    [ "$p" = "100.00" ] && read -rst .8 _;printf \\e8
    printf '%s\e[48;5;23;38;5;41m%s\e[0m%6.2f%%%b' 'In 1 char width: ' \
        "$bar1" $p ,\\n 'with 2 chars: ' "$bar2" $p ,\\n 'or 3 chars: ' \
        "$bar3" $p ,\\n 'in 5 characters: ' "$bar4" $p ,\\n 'in 8 chars: ' \
        "$bar5" $p .\\n 'There are 13 chars: ' "$bar6" $p ,\\n '20 chars: '\
        "$bar7" $p ,\\n 'then 40 chars' "$bar8" $p \
        ', or full width:\n' '' "$bar9" $p ''
    ((10#$i)) || read -st .5 _; read -st .1 _ && break
done
